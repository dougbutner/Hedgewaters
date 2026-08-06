#include "takeiteasy.hpp"
#include <cstdint>

//contractName:takeiteasy

namespace eosio {

// === takeiteasy Token Implementation === //
ACTION takeiteasy::create(const name& issuer, const asset& maximum_supply) {
    /*/
    Creates a new token with the specified maximum supply.
    Only the contract account can create new tokens.
    /*/
    require_auth(get_self());

    auto sym = maximum_supply.symbol;
    check(sym.is_valid(), "❇️ invalid symbol name");
    check(maximum_supply.is_valid(), "❇️ invalid supply");

    stats statstable(get_self(), sym.code().raw());
    auto existing = statstable.find(sym.code().raw());
    check(existing == statstable.end(), "❇️ token with symbol already exists");

    // -- Initialize token stats -- //
    statstable.emplace(get_self(), [&](auto& s) {
        s.supply.symbol = maximum_supply.symbol;
        s.max_supply = maximum_supply;
        s.issuer = issuer;
        s.reflection_pool = asset{0, maximum_supply.symbol};
        s.burn_pool = asset{0, maximum_supply.symbol};
    });//END emplace

    // -- Initialize distribution config -- //
    distribution_singleton config(get_self(), get_self().value);
    config.set({sym, 0, 100, 100, 100}, get_self());
}//END create

ACTION takeiteasy::issue(const name& to, const asset& quantity, const string& memo) {
    auto sym = quantity.symbol;
    check(sym.is_valid(), "❇️ invalid symbol name");
    check(memo.size() <= 256, "✍️ memo has more than 256 bytes");

    stats statstable(get_self(), sym.code().raw());
    auto existing = statstable.find(sym.code().raw());
    check(existing != statstable.end(), "❇️ token with symbol does not exist, create token before issue");
    const auto& st = *existing;
    check(to == st.issuer, "❇️ tokens can only be issued to issuer account");

    require_auth(st.issuer);
    check(quantity.is_valid(), "❇️ invalid quantity");
    check(quantity.amount > 0, "❇️ must issue positive quantity");

    check(quantity.symbol == st.supply.symbol, "❇️ symbol precision mismatch");
    check(quantity.amount <= st.max_supply.amount - st.supply.amount, "❇️ quantity exceeds available supply");

    statstable.modify(st, same_payer, [&](auto& s) {
        s.supply += quantity;
        //s.max_supply += quantity;
    });

    add_balance(st.issuer, quantity, st.issuer);
    update_flex_balance(st.issuer, quantity);
}

ACTION takeiteasy::transfer(const name& from, const name& to, const asset& quantity, const string& memo) {
    check(has_auth(from) || has_auth(get_self()), "❇️ missing required authority of sender");
    check(from != to, "❇️ cannot transfer to self");
    check(is_account(to), "❇️ to account does not exist");
    auto sym = quantity.symbol.code();
    stats statstable(get_self(), sym.raw());
    const auto& st = statstable.get(sym.raw(), "❇️ no balance with specified symbol");

    // Add balance check for sender
    accounts from_acnts(get_self(), from.value);
    auto from_it = from_acnts.find(sym.raw());
    check(from_it != from_acnts.end(), "❇️ sender has no balance with specified symbol");
    check(from_it->balance.amount >= quantity.amount, "❇️ Overdrawn Balance. Send 98% of total balance maximum. EASY has a 2% flex fee reflected back to holders as EASY or XPR, XUSDC, METAL, and more. Docs 🧠 flex.report");

    check(memo.size() <= 256, "✍️ memo too long ");

        // Add reflections tag to swap.alcor memos ending with #0
    if (false && to == "swap.alcor"_n && memo.size() >= 2 && memo.substr(memo.size() - 2) == "#0") {
        std::string final_memo = memo + "#reflections";
        action(
            permission_level{get_self(), "active"_n},
            get_self(),
            "transfer"_n,
            std::make_tuple(from, to, quantity, final_memo)
        ).send();
    } else {
        require_recipient(from);
        require_recipient(to);

        check(quantity.is_valid(), "❇️ invalid amount");
        check(quantity.amount > 0, "❇️ must transfer positive amount");
        check(quantity.symbol == st.supply.symbol, "❇️ symbol mismatch, check # of digits");



        auto payer = has_auth(to) ? to : from;

        // Skip fees if transfer is from the contract itself or if sender is banned
        bool is_reflection_distribution = (from == get_self());
        
        // Check if sender is banned
        flexers flex_table(get_self(), get_self().value);
        
        auto flex_it = flex_table.find(from.value);
        bool is_banned = (flex_it != flex_table.end() && flex_it->is_banned);
        
        // Check if sender is an Alcor-related account
        bool is_from_alcor = (from == "alcor"_n || from == "bridge.strx"_n || from == "swap.alcor"_n || from == "mon3y"_n);
        
        asset total_deduction = quantity;  // Default to just the transfer amount
        asset actual_transfer = quantity;  // Amount recipient actually receives, defaults to quantity

        if (!is_reflection_distribution && !is_banned) {
            distribution_singleton config(get_self(), get_self().value);
            check(config.exists(), "distribution config not set 🤷");
            auto conf = config.get();
            check(quantity.symbol == conf.token_symbol, "symbol mismatch");

            // Calculate additional fees using integer arithmetic
            asset reflection_fee = asset{(quantity.amount * conf.reflection_rate) / 10000, quantity.symbol};
            asset burn_fee = asset{(quantity.amount * conf.burn_rate) / 10000, quantity.symbol};

            // Add fees to total deduction
            total_deduction = is_from_alcor ? quantity : quantity + reflection_fee + burn_fee;
            
            // Check if this would exceed the user's balance
            accounts from_acnts(get_self(), from.value);
            const auto& from_acc = from_acnts.get(quantity.symbol.code().raw(), "no balance object found");
            if (from_acc.balance.amount < total_deduction.amount) {
                // Not enough balance for fees, take them from the transfer amount instead
                // This allows max balance transfers to succeed
                total_deduction = from_acc.balance;
                actual_transfer = asset{total_deduction.amount - reflection_fee.amount - burn_fee.amount, quantity.symbol};
            } else {
                actual_transfer = is_from_alcor ? 
                    asset{quantity.amount - reflection_fee.amount - burn_fee.amount, quantity.symbol} : 
                    quantity;
            }

            // Handle reflection fee for swap.alcor first
            add_to_reflection_pool(reflection_fee);
            add_balance(get_self(), reflection_fee, get_self());
            

            // Handle burn fee - skip for Alcor accounts
            if(burn_fee.amount > 0) {
                add_balance(get_self(), burn_fee, get_self());
                
                if (!is_from_alcor) {
                    // For normal accounts, add to burn pool
                    statstable.modify(st, same_payer, [&](auto& s) {
                        s.burn_pool += burn_fee;
                    });
                }
            }
        }

        // Update regular balances
        sub_balance(from, total_deduction);  // Deduct transfer amount plus fees (if any)
        add_balance(to, actual_transfer, payer);    // Recipient gets amount (adjusted if needed)

        // Update flex balances for reflection calculations
        update_flex_balance(from, -total_deduction);
        update_flex_balance(to, actual_transfer);
    }
}

void takeiteasy::sub_balance(const name& owner, const asset& value) {
    accounts from_acnts(get_self(), owner.value);
    const auto& from = from_acnts.get(value.symbol.code().raw(), "no balance object found");
    check(from.balance.amount >= value.amount, "overdrawn balance");

    from_acnts.modify(from, owner, [&](auto& a) {
        a.balance -= value;
    });
}

void takeiteasy::add_balance(const name& owner, const asset& value, const name& ram_payer) {
    accounts to_acnts(get_self(), owner.value);
    auto to = to_acnts.find(value.symbol.code().raw());
    if(to == to_acnts.end()) {
        to_acnts.emplace(ram_payer, [&](auto& a) {
            a.balance = value;
        });
    } else {
        to_acnts.modify(to, same_payer, [&](auto& a) {
            a.balance += value;
        });
    }
}

void takeiteasy::update_flex_balance(const name& owner, const asset& value) {
    flexers flex_acnts(get_self(), get_self().value);
    auto flex_it = flex_acnts.find(owner.value);
    
    // Get the actual balance from accounts table
    accounts user_accounts(get_self(), owner.value);
    auto account_it = user_accounts.find(value.symbol.code().raw());
    asset actual_balance = asset{0, value.symbol};
    
    if (account_it != user_accounts.end()) {
        actual_balance = account_it->balance;
    }
    
    if(flex_it == flex_acnts.end()) {
        flex_acnts.emplace(get_self(), [&](auto& a) {
            a.owner = owner;
            a.balance = actual_balance;  // Use actual balance from accounts table
            a.is_banned = false;  // New accounts start unbanned
            a.flextoken = 0;      // Default to 0 for new accounts
        });
    } else {
        flex_acnts.modify(flex_it, same_payer, [&](auto& a) {
            a.balance = actual_balance;  // Sync with actual balance from accounts table
        });
    }
}

ACTION takeiteasy::burn(const name& username, const asset& quantity, const string& memo) {
    auto sym = quantity.symbol;
    check(sym.is_valid(), "❇️ invalid symbol name");
    check(memo.size() <= 256, "memo has more than 256 bytes");

    stats statstable(get_self(), sym.code().raw());
    auto existing = statstable.find(sym.code().raw());
    check(existing != statstable.end(), "token with symbol does not exist");
    const auto& st = *existing;

    require_auth(username);
    check(quantity.is_valid(), "invalid quantity");
    check(quantity.amount > 0, "must burn positive quantity");
    check(quantity.symbol == st.supply.symbol, "symbol precision mismatch");

    // Subtract from supply
    statstable.modify(st, same_payer, [&](auto& s) {
        s.supply -= quantity;
    });

    // Subtract from user's balance
    sub_balance(username, quantity);
    update_flex_balance(username, -quantity);

    // Check if balance is zero and close if needed
    accounts acnts(get_self(), username.value);
    auto it = acnts.find(sym.code().raw());
    if (it != acnts.end() && it->balance.amount == 0) {
        acnts.erase(it);
    }
}

void takeiteasy::open(const name& owner, const symbol& symbol, const name& ram_payer) {
    require_auth(ram_payer);

    check(is_account(owner), "owner account does not exist");

    auto sym_code_raw = symbol.code().raw();
    stats statstable(get_self(), sym_code_raw);
    const auto& st = statstable.get(sym_code_raw, "symbol does not exist");
    check(st.supply.symbol == symbol, "symbol precision mismatch");

    accounts acnts(get_self(), owner.value);
    auto it = acnts.find(sym_code_raw);
    if(it == acnts.end()) {
        acnts.emplace(ram_payer, [&](auto& a) {
            a.balance = asset{0, symbol};
        });
    }
}

void takeiteasy::close(const name& owner, const symbol& symbol) {
    require_auth(owner);
    accounts acnts(get_self(), owner.value);
    auto it = acnts.find(symbol.code().raw());
    check(it != acnts.end(), "Balance row already deleted or never existed. Action won't have any effect.");
    check(it->balance.amount == 0, "Cannot close because the balance is not zero.");
    acnts.erase(it);
}

void takeiteasy::add_to_reflection_pool(const asset& quantity) {
    stats statstable(get_self(), quantity.symbol.code().raw());
    auto st = statstable.find(quantity.symbol.code().raw());
    check(st != statstable.end(), "token with symbol does not exist");
    check(quantity.symbol == st->reflection_pool.symbol, "symbol precision mismatch");
    
    statstable.modify(st, same_payer, [&](auto& s) {
        s.reflection_pool += quantity;
    });
}

void takeiteasy::set_distribution_config(const symbol& sym, uint64_t start, uint32_t lim, uint16_t reflection_rate, uint16_t burn_rate) {
    distribution_singleton config(get_self(), get_self().value);
    config.set({sym, start, lim, reflection_rate, burn_rate}, get_self());
}

ACTION takeiteasy::noflexzone(const name& account, const bool& ban_status) {
    // If account is trying to ban themselves, allow it only for banning
    if (has_auth(account)) {
        check(ban_status == true, "❇️ you can remove reflections, not add them back. whoops 🤷");
    } else {
        require_auth(get_self());
    }
    
    check(is_account(account), "account does not exist");
    
    // -- Get distribution config to know which symbol to use -- //
    distribution_singleton config(get_self(), get_self().value);
    check(config.exists(), "distribution config not set");
    auto conf = config.get();
    
    flexers flex_table(get_self(), get_self().value);
    auto itr = flex_table.find(account.value);
    
    if(itr == flex_table.end()) {
        // If account doesn't exist in flexers yet, create it with banned status
        flex_table.emplace(get_self(), [&](auto& f) {
            f.owner = account;
            f.balance = asset{0, conf.token_symbol}; // Use symbol from config
            f.is_banned = ban_status;
        });
    } else {
        // Update existing account's ban status
        flex_table.modify(itr, same_payer, [&](auto& f) {
            f.is_banned = ban_status;
        });
    }
}

ACTION takeiteasy::distribute() {
    distribution_singleton config(get_self(), get_self().value);
    check(config.exists(), "❇️ distribution config not set");
    auto conf = config.get();

    stats statstable(get_self(), conf.token_symbol.code().raw());
    auto st = statstable.find(conf.token_symbol.code().raw());
    check(st != statstable.end(), "❇️ symbol not found");
    const int64_t p = st->reflection_pool.amount, f = (p % 1000000) / 10000;
    check(p >= 1000000000LL, "❇️ Needs 1000.00 EASY pending, currently " + std::to_string(p / 1000000) + "." + (f < 10 ? "0" : "") + std::to_string(f) + " EASY");

    flexers flex_table(get_self(), get_self().value);
    
    // Get total supply and alcor balances using static helper functions
    asset total_supply = get_supply(get_self(), conf.token_symbol.code());
    asset alcor_balances = get_balance(get_self(), "alcor"_n, conf.token_symbol.code());
    alcor_balances += get_balance(get_self(), "mon3y"_n, conf.token_symbol.code());
    alcor_balances += get_balance(get_self(), "swap.alcor"_n, conf.token_symbol.code());
    
    // Calculate adjusted total supply
    total_supply -= alcor_balances;
    check(total_supply.amount > 0, "❇️ adjusted total supply must be positive");

    //check(false, "❇️ total_supply: " + total_supply.to_string() + " alcor_balances: " + alcor_balances.to_string());

    asset total_distributed{0, conf.token_symbol};
    uint32_t processed = 0;
    auto itr = conf.start_key == 0 ? flex_table.begin() : flex_table.lower_bound(conf.start_key);

    std::string default_memo = "Be EASY 🍹 flex.town 🏘";
    /*/std::string default_memo = "swapexactin#2770,186#" + 
                              itr->owner.to_string() + "#" +
                              "0.000001 XUSDC@xtokens#0#reflections";/*/
    /*/
    // Generate the default memo outside the loop
    std::string default_memo = "MEME  💎  `setflextoken` to reflect ";
    
    // Get all available tokens from flexpool table
    flexpools pools(get_self(), get_self().value);
    bool first_token = true;
    
    for(auto pool_itr = pools.begin(); pool_itr != pools.end(); ++pool_itr) {
        if(!first_token) {
            default_memo += " ";
        }
        // Extract just the symbol code (letters) without precision
        default_memo += pool_itr->token_symbol.code().to_string();
        first_token = false;
    }
    /*/

    // --- IF YOU PUT BACK MEMO COMMENT REMOVE THIS --- //
    flexpools pools(get_self(), get_self().value);

    const int64_t pool = st->reflection_pool.amount;

    while(itr != flex_table.end() && processed < conf.limit) {
        if(itr->owner != get_self() &&
           !itr->is_banned &&
           itr->balance.symbol == conf.token_symbol &&
           itr->balance.amount >= 100 * pow(10, conf.token_symbol.precision())) {

            double share = static_cast<double>(itr->balance.amount) / total_supply.amount;
            asset reflection_share = asset{static_cast<int64_t>(pool * share * 0.618), conf.token_symbol};

            if(reflection_share.amount > 0) {
                std::string memo;
                name transfer_to = itr->owner;

                if(itr->flextoken != 0) {
                    auto pool_itr = pools.find(itr->flextoken);
                    if(pool_itr != pools.end()) {
                        // Format special memo for Alcor swap
                        // Add precision zeros before decimal point
                        string min_amount = "0" + std::string(pool_itr->token_symbol.precision() - 1, '0') + "1";
                        min_amount.insert(1, ".");  // Insert decimal point after first zero

                        memo = "swapexactin#" +
                               pool_itr->pool_ids + "#" +
                               itr->owner.to_string() + "#" +
                               min_amount + " " +
                               pool_itr->token_symbol.code().to_string() + "@" +
                               pool_itr->token_contract.to_string() + "#0#reflections";

                        transfer_to = "swap.alcor"_n;
                    }
                } else {
                    memo = default_memo;
                }

                // Partner cut: 0.1% nyra, 0.1% goldx, 0.05% printmoney, 0.05% reflections (= 0.3% total)
                asset nyra_amount{static_cast<int64_t>(st->reflection_pool.amount * 0.001), conf.token_symbol};
                asset goldx_amount{static_cast<int64_t>(st->reflection_pool.amount * 0.001), conf.token_symbol};
                asset printmoney_amount{static_cast<int64_t>(st->reflection_pool.amount * 0.0005), conf.token_symbol};
                asset reflections_amount{static_cast<int64_t>(st->reflection_pool.amount * 0.0005), conf.token_symbol};
                asset partner_total = nyra_amount + goldx_amount + printmoney_amount + reflections_amount;

                // Subtract from reflection pool
                statstable.modify(st, same_payer, [&](auto& s) {
                    s.reflection_pool -= partner_total;
                });

                // Add to nyra account balances
                name nyra_account = "nyra"_n;
                add_balance(nyra_account, nyra_amount, get_self());
                update_flex_balance(nyra_account, nyra_amount);

                // Add to goldx account balances
                name goldx_account = "goldx"_n;
                add_balance(goldx_account, goldx_amount, get_self());
                update_flex_balance(goldx_account, goldx_amount);

                // Add to printmoney account balances
                name printmoney_account = "printmoney"_n;
                add_balance(printmoney_account, printmoney_amount, get_self());
                update_flex_balance(printmoney_account, printmoney_amount);

                // Add to reflections account balances
                name reflections_account = "reflections"_n;
                add_balance(reflections_account, reflections_amount, get_self());
                update_flex_balance(reflections_account, reflections_amount);

                // Subtract from contract account balances
                sub_balance(get_self(), partner_total);
                update_flex_balance(get_self(), -partner_total);

                action(
                    permission_level{get_self(), "active"_n},
                    get_self(),
                    "transfer"_n,
                    std::make_tuple(get_self(), transfer_to, reflection_share, memo)
                ).send();

                total_distributed += reflection_share;
            }
        }
        ++itr;
        ++processed;
    }

    if(total_distributed.amount > 0) {
        // Get accumulated burn amount and burn it
        asset burn_amount = st->burn_pool;
        if(burn_amount.amount > 0) {
            action(
                permission_level{get_self(), "active"_n},
                get_self(),
                "burn"_n,
                std::make_tuple(get_self(), burn_amount, std::string("Burn " + std::to_string(conf.burn_rate/100) + "% of every transaction 🔥"))
            ).send();
        }

        // Update pools
        statstable.modify(st, same_payer, [&](auto& s) {
            s.reflection_pool -= total_distributed;
            s.burn_pool.amount = 0; // Reset burn pool after burning
        });
    }

    // Update config for pagination
    if(itr == flex_table.end()) {
        config.set({conf.token_symbol, 0, conf.limit, conf.reflection_rate, conf.burn_rate}, get_self());
    } else {
        config.set({conf.token_symbol, itr->owner.value, conf.limit, conf.reflection_rate, conf.burn_rate}, get_self());
    }
}

ACTION takeiteasy::setconfig(const symbol& sym, uint64_t start_key, uint32_t limit, uint16_t reflection_rate, uint16_t burn_rate) {
    require_auth(get_self());
    check(sym.is_valid(), "❇️ invalid symbol");
    check(limit > 0, "limit must be positive");
    check(limit <= 1000, "limit cannot exceed 1000");
    check(reflection_rate <= 10000, "reflection rate cannot exceed 100%");
    check(burn_rate <= 10000, "burn rate cannot exceed 100%");
    check(reflection_rate + burn_rate <= 10000, "total fees cannot exceed 100%");

    distribution_singleton config(get_self(), get_self().value);
    config.set({sym, start_key, limit, reflection_rate, burn_rate}, get_self());
}

ACTION takeiteasy::setflexpool(const uint64_t& id, const symbol& token_symbol, const name& token_contract, const string& pool_ids) {
    require_auth(get_self());
    check(is_account(token_contract), "token contract account does not exist 🤷");
    check(token_symbol.is_valid(), "❇️ invalid symbol");
    check(!pool_ids.empty(), "pool ids cannot be empty");
    
    flexpools pools(get_self(), get_self().value);
    auto itr = pools.find(id);
    
    if(itr == pools.end()) {
        pools.emplace(get_self(), [&](auto& p) {
            p.id = id;
            p.token_symbol = token_symbol;
            p.token_contract = token_contract;
            p.pool_ids = pool_ids;
        });
    } else {
        pools.modify(itr, same_payer, [&](auto& p) {
            p.token_symbol = token_symbol;
            p.token_contract = token_contract;
            p.pool_ids = pool_ids;
        });
    }
}

ACTION takeiteasy::setflextoken(const name& owner, const string& token_symbol) {

    check(has_auth(owner) || has_auth(get_self()), "❇️ missing required authority of sender or contract");
    
    flexers flex_table(get_self(), get_self().value);
    auto flex_it = flex_table.find(owner.value);
    
    // If token_symbol is empty, reset to default (0)
    if(token_symbol.empty() || token_symbol == "EASY") {
        if(flex_it != flex_table.end()) {
            flex_table.modify(flex_it, same_payer, [&](auto& f) {
                f.flextoken = 0;
            });
        }
        return;
    }
    
    // Find matching flexpool by symbol
    flexpools pools(get_self(), get_self().value);
    uint64_t matching_id = 0;
    
    for(auto pool_it = pools.begin(); pool_it != pools.end(); ++pool_it) {
        if(pool_it->token_symbol.code().to_string() == token_symbol) {
            matching_id = pool_it->id;
            break;
        }
    }
    
    check(matching_id != 0, "❇️ No reflection pool found for symbol: " + token_symbol);
    
    if(flex_it == flex_table.end()) {
        flex_table.emplace(get_self(), [&](auto& f) {
            f.owner = owner;
            f.balance = asset{0, symbol{"", 0}};
            f.is_banned = false;
            f.flextoken = matching_id;
        });
    } else {
        flex_table.modify(flex_it, same_payer, [&](auto& f) {
            f.flextoken = matching_id;
        });
    }
}

    [[eosio::on_notify("*::transfer")]]
    void takeiteasy::handle_transfer(name from, name to, asset quantity, string memo) {
        
        // Only process incoming transfers to this contract
        if (to != get_self()) return;
        if (from != "swap.alcor"_n) return;
        
        // Check memo starts with "Col" (case sensitive)
        if (memo.length() < 3 || memo.substr(0, 3) != "Col") {return;}
        
        action(
            permission_level{get_self(), "active"_n},
            get_first_receiver(),
            "transfer"_n,
            std::make_tuple(get_self(), "reflections"_n, quantity, 
            std::string("Fees 💸 "))
        ).send();
    }

} /// namespace eosio 