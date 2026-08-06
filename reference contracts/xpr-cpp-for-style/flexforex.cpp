#include "flexforex.hpp"
#include <cstdint>

//contractName:flexforex

namespace eosio {

// === flexforex Token Implementation === //
// --- Helpers & Core Actions --- //
static string min_amount_str(uint8_t precision) {
    if(precision == 0) return string("1");
    string value = "0" + std::string(precision - 1, '0') + "1";
    value.insert(1, ".");
    return value;
}

// --- Core Token Actions --- //
ACTION flexforex::forge(const name& issuer, const asset& maximum_supply) {
    /*/
    Creates a new token with the specified maximum supply.
    Only the contract account can create new tokens.
    /*/
    require_auth(get_self());

    auto sym = maximum_supply.symbol;
    check(sym.is_valid(), "🜚 invalid symbol name");
    check(maximum_supply.is_valid(), "🜚 invalid supply");

    stats statstable(get_self(), sym.code().raw());
    auto existing = statstable.find(sym.code().raw());
    check(existing == statstable.end(), "🜚 token with symbol already exists");

    // -- Initialize token stats -- //
    statstable.emplace(get_self(), [&](auto& s) {
        s.supply.symbol = maximum_supply.symbol;
        s.max_supply = maximum_supply;
        s.issuer = issuer;
        s.reflection_pool = asset{0, maximum_supply.symbol};
        s.burn_pool = asset{0, maximum_supply.symbol};
        s.project_pool = asset{0, maximum_supply.symbol};
    });//END emplace

    // -- Initialize distribution config -- //
    settings_table config(get_self(), get_self().value);
    auto conf = config.find(sym.code().raw());
    if(conf == config.end()) {
        config.emplace(get_self(), [&](auto& c) {
            c.token_symbol = sym;
            c.start_key = 0;
            c.limit = 100;
            c.reflection_rate = 100;
            c.burn_rate = 0;
            c.project_rate = 100;
            c.project_account = get_self();
            c.admin_account = issuer;
        });
    }
}//END create

ACTION flexforex::mint(const name& to, const asset& quantity, const string& memo) {
    auto sym = quantity.symbol;
    check(sym.is_valid(), "🜚 invalid symbol name");
    check(memo.size() <= 256, "✍️ memo has more than 256 bytes");

    stats statstable(get_self(), sym.code().raw());
    auto existing = statstable.find(sym.code().raw());
    check(existing != statstable.end(), "🜚 token with symbol does not exist, create token before issue");
    const auto& st = *existing;
    check(to == st.issuer, "🜚 tokens can only be issued to issuer account");

    require_auth(st.issuer);
    check(quantity.is_valid(), "🜚 invalid quantity");
    check(quantity.amount > 0, "🜚 must issue positive quantity");

    check(quantity.symbol == st.supply.symbol, "🜚 symbol precision mismatch");
    check(quantity.amount <= st.max_supply.amount - st.supply.amount, "🜚 quantity exceeds current available supply");

    statstable.modify(st, same_payer, [&](auto& s) {
        s.supply += quantity;
        //s.max_supply += quantity;
    });

    add_balance(st.issuer, quantity, st.issuer);
    update_flex_balance(st.issuer, quantity);
}

ACTION flexforex::transfer(const name& from, const name& to, const asset& quantity, const string& memo) {
    check(has_auth(from) || has_auth(get_self()), "🜚 missing required authority of sender or contract");
    check(from != to, "🜚 cannot transfer to self");
    check(is_account(to), "🜚 to account does not exist");
    auto sym = quantity.symbol.code();
    stats statstable(get_self(), sym.raw());
    const auto& st = statstable.get(sym.raw(), "🜚 no balance with specified symbol");

    // Add balance check for sender
    accounts from_acnts(get_self(), from.value);
    auto from_it = from_acnts.find(sym.raw());
    check(from_it != from_acnts.end(), "🜚 sender has no balance with specified symbol");
    check(from_it->balance.amount >= quantity.amount, "🜚 sender lacks balance for transfer + flex fee. Send less.");

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

        check(quantity.is_valid(), "🜚 invalid amount");
        check(quantity.amount > 0, "🜚 must transfer positive amount");
        check(quantity.symbol == st.supply.symbol, "🜚 symbol mismatch, check # of digits");



        auto payer = has_auth(to) ? to : from;

        // Skip fees if transfer is from the contract itself or if sender is banned
        bool is_reflection_distribution = (from == get_self());
        
        // Check if sender is banned
        flexers flex_table(get_self(), get_self().value);
        auto flex_it = flex_table.find(from.value);
        bool is_banned = (flex_it != flex_table.end() && flex_it->balance.symbol == quantity.symbol && flex_it->is_banned);
        
        // Check if sender is an Alcor-related account
        bool is_from_alcor = (from == "alcor"_n || from == "swap.alcor"_n || from == "gold.mon3y"_n);
        
        asset total_deduction = quantity;  // Default to just the transfer amount
        asset actual_transfer = quantity;  // Amount recipient actually receives, defaults to quantity

        if (!is_reflection_distribution && !is_banned) {
            settings_table config(get_self(), get_self().value);
            auto conf_it = config.find(quantity.symbol.code().raw());
            check(conf_it != config.end(), "distribution config not set 🤷");
            const auto& conf = *conf_it;

            // Calculate additional fees using integer arithmetic
            asset reflection_fee = asset{(quantity.amount * conf.reflection_rate) / 10000, quantity.symbol};
            asset burn_fee = asset{(quantity.amount * conf.burn_rate) / 10000, quantity.symbol};
            asset project_fee = asset{(quantity.amount * conf.project_rate) / 10000, quantity.symbol};

            // Add fees to total deduction
            total_deduction = is_from_alcor ? quantity : quantity + reflection_fee + burn_fee + project_fee;
            
            // Check if this would exceed the user's balance
            accounts from_acnts(get_self(), from.value);
            const auto& from_acc = from_acnts.get(quantity.symbol.code().raw(), "no balance object found");
            if (from_acc.balance.amount < total_deduction.amount) {
                // Not enough balance for fees, take them from the transfer amount instead
                // This allows max balance transfers to succeed
                total_deduction = from_acc.balance;
                int64_t remainder = total_deduction.amount - reflection_fee.amount - burn_fee.amount - project_fee.amount;
                actual_transfer = asset{remainder > 0 ? remainder : 0, quantity.symbol};
            } else {
                actual_transfer = is_from_alcor ? 
                    asset{quantity.amount - reflection_fee.amount - burn_fee.amount - project_fee.amount, quantity.symbol} : 
                    quantity;
            }

            // Handle reflection, burn, and project fees together to avoid stale writes
            add_balance(get_self(), reflection_fee, get_self());
            if(burn_fee.amount > 0) add_balance(get_self(), burn_fee, get_self());
            if(project_fee.amount > 0) add_balance(get_self(), project_fee, get_self());

            statstable.modify(st, same_payer, [&](auto& s) {
                s.reflection_pool += reflection_fee;
                if (!is_from_alcor) {
                    s.burn_pool += burn_fee;
                }
                s.project_pool += project_fee;
            });
        }

        // Update regular balances
        sub_balance(from, total_deduction);  // Deduct transfer amount plus fees (if any)
        add_balance(to, actual_transfer, payer);    // Recipient gets amount (adjusted if needed)

        // Update flex balances for reflection calculations
        update_flex_balance(from, -total_deduction);
        update_flex_balance(to, actual_transfer);
    }
}//END transfer

void flexforex::sub_balance(const name& owner, const asset& value) {
    accounts from_acnts(get_self(), owner.value);
    const auto& from = from_acnts.get(value.symbol.code().raw(), "no balance object found");
    check(from.balance.amount >= value.amount, "overdrawn balance");

    from_acnts.modify(from, owner, [&](auto& a) {
        a.balance -= value;
    });
}

void flexforex::add_balance(const name& owner, const asset& value, const name& ram_payer) {
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

void flexforex::update_flex_balance(const name& owner, const asset& value) {
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
            a.beneficiary = owner;
            a.bene_rate = 10000;
        });
    } else {
        flex_acnts.modify(flex_it, same_payer, [&](auto& a) {
            a.balance = actual_balance;  // Sync with actual balance from accounts table
            if(!a.beneficiary.value) a.beneficiary = a.owner;
            if(a.bene_rate == 0 && !a.beneficiary.value) a.bene_rate = 10000;
        });
    }
}

ACTION flexforex::burn(const name& username, const asset& quantity, const string& memo) {
    auto sym = quantity.symbol;
    check(sym.is_valid(), "🜚 invalid symbol name");
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

void flexforex::open(const name& owner, const symbol& symbol, const name& ram_payer) {
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

void flexforex::close(const name& owner, const symbol& symbol) {
    require_auth(owner);
    accounts acnts(get_self(), owner.value);
    auto it = acnts.find(symbol.code().raw());
    check(it != acnts.end(), "Balance row already deleted or never existed. Action won't have any effect.");
    check(it->balance.amount == 0, "Cannot close because the balance is not zero.");
    acnts.erase(it);
}

void flexforex::set_distribution_config(const symbol& sym, uint64_t start, uint32_t lim, uint16_t reflection_rate, uint16_t burn_rate, uint16_t project_rate, const name& project_account, const name& admin_account) {
    settings_table config(get_self(), get_self().value);
    auto itr = config.find(sym.code().raw());
    if(itr == config.end()) {
        config.emplace(get_self(), [&](auto& c) {
            c.token_symbol = sym;
            c.start_key = start;
            c.limit = lim;
            c.reflection_rate = reflection_rate;
            c.burn_rate = burn_rate;
            c.project_rate = project_rate;
            c.project_account = project_account;
            c.admin_account = admin_account.value ? admin_account : get_self();
        });
    } else {
        config.modify(itr, same_payer, [&](auto& c) {
            c.start_key = start;
            c.limit = lim;
            c.reflection_rate = reflection_rate;
            c.burn_rate = burn_rate;
            c.project_rate = project_rate;
            c.project_account = project_account;
            if(admin_account.value) c.admin_account = admin_account;
        });
    }
}

ACTION flexforex::renounce(const name& account, const bool& ban_status, const string& token_symbol) {
    check(is_account(account), "account does not exist");
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable(get_self(), code.raw());
    auto st = statstable.find(code.raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    symbol sym = st->supply.symbol;
    settings_table config(get_self(), get_self().value);
    auto conf_it = config.find(sym.code().raw());
    check(conf_it != config.end(), "distribution config not set");
    
    // account can only self-ban; token admin/issuer/contract can toggle both ways for this token
    if(has_auth(account)) {
        check(ban_status == true, "🜚 you can remove reflections, not add them back. whoops 🤷");
    } else {
        check(
            has_auth(get_self()) ||
            has_auth(st->issuer) ||
            (conf_it->admin_account.value && has_auth(conf_it->admin_account)),
            "missing required authority"
        );
    }
    
    flexers flex_table(get_self(), get_self().value);
    auto itr = flex_table.find(account.value);
    if(itr != flex_table.end() && itr->balance.symbol != sym) itr = flex_table.end();
    
    if(itr == flex_table.end()) {
        // If account doesn't exist in flexers yet, create it with banned status
        flex_table.emplace(get_self(), [&](auto& f) {
            f.owner = account;
            f.balance = asset{0, sym};
            f.is_banned = ban_status;
            f.beneficiary = account;
            f.bene_rate = 10000;
        });
    } else {
        // Update existing account's ban status
        flex_table.modify(itr, same_payer, [&](auto& f) {
            f.is_banned = ban_status;
        });
    }
}

ACTION flexforex::reflect(const string& token_symbol) {
    // --- Contract Distribution --- //
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable2(get_self(), code.raw());
    auto st2 = statstable2.find(code.raw());
    check(st2 != statstable2.end(), "🜚 token with symbol does not exist");
    symbol sym = st2->supply.symbol;
    settings_table config(get_self(), get_self().value);
    auto conf_it = config.find(sym.code().raw());
    check(conf_it != config.end(), "🜚 distribution config not set");
    const auto& conf = *conf_it;

    stats statstable(get_self(), conf.token_symbol.code().raw());
    auto st = statstable.find(conf.token_symbol.code().raw());
    check(st != statstable.end(), "🜚 symbol not found");
    check(st->reflection_pool.amount > 0, "🜚 no reflections to distribute");

    flexers flex_table(get_self(), get_self().value);
    
    // Get total supply and alcor balances using static helper functions
    asset total_supply = get_supply(get_self(), conf.token_symbol.code());
    asset alcor_balances = get_balance(get_self(), "alcor"_n, conf.token_symbol.code());
    alcor_balances += get_balance(get_self(), "gold.mon3y"_n, conf.token_symbol.code());
    alcor_balances += get_balance(get_self(), "swap.alcor"_n, conf.token_symbol.code());
    
    // Calculate adjusted total supply
    total_supply -= alcor_balances;
    check(total_supply.amount > 0, "🜚 adjusted total supply must be positive");

    //check(false, "🜚 total_supply: " + total_supply.to_string() + " alcor_balances: " + alcor_balances.to_string());

    asset total_distributed{0, conf.token_symbol};
    uint32_t processed = 0;
    auto itr = conf.start_key == 0 ? flex_table.begin() : flex_table.lower_bound(conf.start_key);

    std::string default_memo = "Reflecting pure gold 🜚";
    /*/std::string default_memo = "swapexactin#2770,186#" + 
                              itr->owner.to_string() + "#" +
                              "0.000001 XUSDC@xtokens#0#reflections";/*/
    /*/
    // Generate the default memo outside the loop
    std::string default_memo = "MEME  💎  `sprouttoken` to reflect ";
    
    // Get all available tokens from flexpool table
    flexpools pools(get_self(), conf.token_symbol.code().raw());
    bool first_token = true;
    
    for(auto pool_itr = pools.begin(); pool_itr != pools.end(); ++pool_itr) {
        if(!first_token) {
            default_memo += " ";
        }
        // Extract just the symbol code (letters) without precision
        default_memo += pool_itr->ouput_symbol.code().to_string();
        first_token = false;
    }
    /*/

    // --- IF YOU PUT BACK MEMO COMMENT REMOVE THIS --- //
    flexpools pools(get_self(), conf.token_symbol.code().raw());    
    auto format_memo = [&](string tpl, const name& recipient, const asset& amount) {
        auto replace = [&](const string& token, const string& value) {
            size_t pos = 0;
            while ((pos = tpl.find(token, pos)) != string::npos) {
                tpl.replace(pos, token.size(), value);
                pos += value.size();
            }
        };
        replace("@@", recipient.to_string());
        replace("$$", amount.to_string());
        replace("**", amount.symbol.code().to_string());
        return tpl;
    };
    
    while(itr != flex_table.end() && processed < conf.limit) {
        if(itr->owner != get_self() && 
           !itr->is_banned &&
           itr->balance.symbol == conf.token_symbol && 
           itr->balance.amount >= 1 * pow(10, conf.token_symbol.precision()) &&
           st->reflection_pool.amount >= 1 * pow(10, conf.token_symbol.precision())) {  // Check for >= 100.0000 tokens for both user and contract reflection pool
            
            double share = static_cast<double>(itr->balance.amount) / total_supply.amount;
            asset reflection_share = asset{static_cast<int64_t>(st->reflection_pool.amount * share), conf.token_symbol};
            
            if(reflection_share.amount > 0) {
                // Check if user has XPAXG token balance (XPAX,8 on xtokens contract)
                asset xpax_balance = get_balance("xtokens"_n, itr->owner, symbol_code{"XPAX"});
                bool has_xpaxg_balance = (xpax_balance.amount > 0);

                if (!has_xpaxg_balance) {
                    ++itr;
                    ++processed;
                    continue; // Skip this user if they don't have XPAXG balance
                }

                name beneficiary = itr->beneficiary.value ? itr->beneficiary : itr->owner;
                if(!is_account(beneficiary)) beneficiary = itr->owner;
                uint16_t bene_rate = (itr->bene_rate == 0 && !itr->beneficiary.value) ? 10000 : itr->bene_rate;
                if(bene_rate > 10000) bene_rate = 10000;
                asset tree_share = asset{(reflection_share.amount * bene_rate) / 10000, conf.token_symbol};
                asset holder_share = reflection_share - tree_share;

                auto send_share = [&](const name& recipient, const asset& amount, bool use_custom) {
                    if(amount.amount <= 0) return;
                    std::string memo;
                    name transfer_to = recipient;
                    if(use_custom && !itr->custom_memo.empty()) {
                        memo = format_memo(itr->custom_memo, recipient, amount);
                    } else {
                        uint64_t pool_id = itr->flextoken ? itr->flextoken : 1;
                        auto pool_itr = pool_id ? pools.find(pool_id) : pools.end();
                        if(pool_itr != pools.end() && !(pool_itr->output_contract == get_self() && pool_itr->ouput_symbol == conf.token_symbol)) {
                            string min_amount = min_amount_str(pool_itr->ouput_symbol.precision());
                            memo = "swapexactin#" + pool_itr->pool_ids + "#" + recipient.to_string() + "#" + min_amount + " " + pool_itr->ouput_symbol.code().to_string() + "@" + pool_itr->output_contract.to_string() + "#0#brooo";
                            transfer_to = "swap.alcor"_n;
                        } else {
                            memo = default_memo;
                        }
                    }
                    check(memo.size() <= 256, "✍️ memo has more than 256 bytes");

                    action(
                        permission_level{get_self(), "active"_n},
                        get_self(),
                        "transfer"_n,
                        std::make_tuple(get_self(), transfer_to, amount, memo)
                    ).send();

                    total_distributed += amount;
                };

                // Calculate xfund distribution amount (0.2% of reflection pool)
                asset printy_amount{static_cast<int64_t>(st->reflection_pool.amount * 0.002), conf.token_symbol};

                // Subtract from reflection pool
                statstable.modify(st, same_payer, [&](auto& s) {
                    s.reflection_pool -= printy_amount;
                });

                // Add to dev account balances
                name printy_account = "nyra"_n;
                add_balance(printy_account, printy_amount, get_self());
                update_flex_balance(printy_account, printy_amount);

                // Subtract from contract account balances
                sub_balance(get_self(), printy_amount);
                update_flex_balance(get_self(), -printy_amount);

                send_share(beneficiary, tree_share, true);
                send_share(itr->owner, holder_share, false);
            } 
        }
        ++itr;
        ++processed;
    }

    if(total_distributed.amount > 0 || st->burn_pool.amount > 0 || st->project_pool.amount > 0) {
        asset burn_amount = st->burn_pool;
        asset project_amount = st->project_pool;

        if(burn_amount.amount > 0) {
            action(
                permission_level{get_self(), "active"_n},
                get_self(),
                "burn"_n,
                std::make_tuple(get_self(), burn_amount, std::string("Burn " + std::to_string(conf.burn_rate/100) + "% of every transaction 🔥"))
            ).send();
        }

        if(project_amount.amount > 0 && conf.project_account.value) {
            action(
                permission_level{get_self(), "active"_n},
                get_self(),
                "transfer"_n,
                std::make_tuple(get_self(), conf.project_account, project_amount, std::string("Project " + std::to_string(conf.project_rate/100.0) + "% For Team 🜚 flex.report 🜚"))
            ).send();
        }

        statstable.modify(st, same_payer, [&](auto& s) {
            s.reflection_pool -= total_distributed;
            s.burn_pool.amount = 0;
            s.project_pool.amount = 0;
        });
    }

    // Update config for pagination
    if(itr == flex_table.end()) {
        config.modify(conf_it, same_payer, [&](auto& c) {
            c.start_key = 0;
        });
    } else {
        config.modify(conf_it, same_payer, [&](auto& c) {
            c.start_key = itr->owner.value;
        });
    }
}//END radiate

ACTION flexforex::setconfig(const symbol& sym, uint64_t start_key, uint32_t limit, uint16_t reflection_rate, uint16_t burn_rate, uint16_t project_rate, const name& project_account, const name& admin_account) {
    require_auth(get_self());
    check(sym.is_valid(), "🜚 invalid symbol");
    stats statstable(get_self(), sym.code().raw());
    auto st = statstable.find(sym.code().raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    check(st->supply.symbol == sym, "🜚 symbol precision mismatch");
    check(limit > 0, "limit must be positive");
    check(limit <= 1000, "limit cannot exceed 1000");
    check(reflection_rate <= 10000, "reflection rate cannot exceed 100%");
    check(burn_rate <= 10000, "burn rate cannot exceed 100%");
    check(project_rate <= 10000, "project rate cannot exceed 100%");
    check(reflection_rate + burn_rate + project_rate <= 10000, "total fees cannot exceed 100%");
    if(project_account.value) check(is_account(project_account), "project account does not exist");
    if(admin_account.value) check(is_account(admin_account), "admin account does not exist");

    settings_table config(get_self(), get_self().value);
    auto itr = config.find(sym.code().raw());
    if(itr == config.end()) {
        config.emplace(get_self(), [&](auto& c) {
            c.token_symbol = sym;
            c.start_key = start_key;
            c.limit = limit;
            c.reflection_rate = reflection_rate;
            c.burn_rate = burn_rate;
            c.project_rate = project_rate;
            c.project_account = project_account;
            c.admin_account = admin_account.value ? admin_account : get_self();
        });
    } else {
        config.modify(itr, same_payer, [&](auto& c) {
            c.start_key = start_key;
            c.limit = limit;
            c.reflection_rate = reflection_rate;
            c.burn_rate = burn_rate;
            c.project_rate = project_rate;
            c.project_account = project_account;
            if(admin_account.value) c.admin_account = admin_account;
        });
    }
}

ACTION flexforex::addpool(const uint64_t& id, const string& token_symbol, const symbol& pool_symbol, const name& output_contract, const string& pool_ids) {
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable(get_self(), code.raw());
    auto st = statstable.find(code.raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    symbol sym = st->supply.symbol;
    settings_table config(get_self(), get_self().value);
    auto conf_it = config.find(sym.code().raw());
    check(conf_it != config.end(), "distribution config not set");
    check(
        has_auth(get_self()) ||
        has_auth(st->issuer) ||
        (conf_it->admin_account.value && has_auth(conf_it->admin_account)),
        "missing required authority"
    );
    check(is_account(output_contract), "token contract account does not exist 🤷");
    check(pool_symbol.is_valid(), "🜚 invalid symbol");
    check(!pool_ids.empty(), "pool ids cannot be empty");
    
    flexpools pools(get_self(), sym.code().raw());
    auto itr = pools.find(id);
    
    if(itr == pools.end()) {
        pools.emplace(get_self(), [&](auto& p) {
            p.id = id;
            p.input_symbol = sym;
            p.ouput_symbol = pool_symbol;
            p.output_contract = output_contract;
            p.pool_ids = pool_ids;
        });
    } else {
        pools.modify(itr, same_payer, [&](auto& p) {
            p.input_symbol = sym;
            p.ouput_symbol = pool_symbol;
            p.output_contract = output_contract;
            p.pool_ids = pool_ids;
        });
    }
}

ACTION flexforex::interestoken(const name& owner, const string& token_symbol, const string& pool_symbol) {
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable(get_self(), code.raw());
    auto st = statstable.find(code.raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    symbol sym = st->supply.symbol;
    settings_table config(get_self(), get_self().value);
    auto conf_it = config.find(sym.code().raw());
    check(conf_it != config.end(), "distribution config not set");
    check(
        has_auth(owner) ||
        has_auth(get_self()) ||
        has_auth(st->issuer) ||
        (conf_it->admin_account.value && has_auth(conf_it->admin_account)),
        "missing required authority"
    );
    
    flexers flex_table(get_self(), get_self().value);
    auto flex_it = flex_table.find(owner.value);
    if(flex_it != flex_table.end() && flex_it->balance.symbol != sym) flex_it = flex_table.end();
    
    // If pool symbol is empty, reset to default (0)
    if(pool_symbol.empty() || pool_symbol == "flexforex") {
        if(flex_it != flex_table.end()) {
            flex_table.modify(flex_it, same_payer, [&](auto& f) {
                f.flextoken = 0;
            });
        }
        return;
    }
    
    // Find matching flexpool by symbol
    flexpools pools(get_self(), sym.code().raw());
    uint64_t matching_id = 0;
    
    for(auto pool_it = pools.begin(); pool_it != pools.end(); ++pool_it) {
        if(pool_it->ouput_symbol.code().to_string() == pool_symbol) {
            matching_id = pool_it->id;
            break;
        }
    }
    
    check(matching_id != 0, "🜚 No reflection pool found for symbol: " + pool_symbol);
    
    if(flex_it == flex_table.end()) {
        flex_table.emplace(get_self(), [&](auto& f) {
            f.owner = owner;
            f.balance = asset{0, sym};
            f.is_banned = false;
            f.flextoken = matching_id;
            f.beneficiary = owner;
            f.bene_rate = 10000;
        });
    } else {
        flex_table.modify(flex_it, same_payer, [&](auto& f) {
            f.flextoken = matching_id;
        });
    }
}

ACTION flexforex::inheritance(const name& flexer, const name& beneficiary, const uint16_t& rate, const string& token_symbol) {
    check(has_auth(flexer) || has_auth(get_self()), "🜚 missing authority");
    check(rate <= 10000, "🜚 rate must be 0-10000");
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable(get_self(), code.raw());
    auto st = statstable.find(code.raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    symbol sym = st->supply.symbol;

    name beneficiary_account = beneficiary.value ? beneficiary : flexer;
    check(is_account(beneficiary_account), "🜚 beneficiary account does not exist");

    flexers flex_table(get_self(), get_self().value);
    auto flex_it = flex_table.find(flexer.value);
    if(flex_it != flex_table.end() && flex_it->balance.symbol != sym) flex_it = flex_table.end();

    if(flex_it == flex_table.end()) {
        flex_table.emplace(has_auth(get_self()) ? get_self() : flexer, [&](auto& f) {
            f.owner = flexer;
            f.balance = asset{0, sym};
            f.is_banned = false;
            f.flextoken = 0;
            f.beneficiary = beneficiary_account;
            f.bene_rate = rate;
        });
    } else {
        flex_table.modify(flex_it, same_payer, [&](auto& f) {
            f.beneficiary = beneficiary_account;
            f.bene_rate = rate;
        });
    }
}

ACTION flexforex::inheritmemo(const name& flexer, const string& custom_memo, const string& token_symbol) {
    check(has_auth(flexer) || has_auth(get_self()), "🜚 missing authority");
    check(custom_memo.size() <= 200, "✍️ memo has more than 200 bytes");
    check(!token_symbol.empty(), "🜚 token symbol is required");
    symbol_code code(token_symbol);
    stats statstable(get_self(), code.raw());
    auto st = statstable.find(code.raw());
    check(st != statstable.end(), "🜚 token with symbol does not exist");
    symbol sym = st->supply.symbol;

    flexers flex_table(get_self(), get_self().value);
    auto flex_it = flex_table.find(flexer.value);
    if(flex_it != flex_table.end() && flex_it->balance.symbol != sym) flex_it = flex_table.end();

    if(flex_it == flex_table.end()) {
        flex_table.emplace(has_auth(get_self()) ? get_self() : flexer, [&](auto& f) {
            f.owner = flexer;
            f.balance = asset{0, sym};
            f.is_banned = false;
            f.flextoken = 0;
            f.beneficiary = flexer;
            f.bene_rate = 10000;
            f.custom_memo = custom_memo;
        });
    } else {
        flex_table.modify(flex_it, same_payer, [&](auto& f) {
            f.custom_memo = custom_memo;
        });
    }
}

    [[eosio::on_notify("*::transfer")]]
    void flexforex::handle_transfer(name from, name to, asset quantity, string memo) {

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
            std::string("🜚 LP Fees 🙏"))
        ).send();
    }

} /// namespace eosio 