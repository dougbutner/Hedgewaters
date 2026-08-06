#include <eosio/eosio.hpp>
#include <eosio/asset.hpp>
#include <eosio/system.hpp>

using namespace eosio;
using namespace std;

CONTRACT rhteasy : public contract {
public:
    using contract::contract;

    const uint64_t MIN_AMOUNT = 100; // 0.01 with 4 decimal precision

    [[eosio::on_notify("*::transfer")]]
    void on_transfer(name from, name to, asset quantity, string memo) {

        // Check memo starts with "Col" (case sensitive)
        if (memo.length() < 3 || memo.substr(0, 3) != "Col") {return;}

        
        // Only process incoming transfers to this contract
        if (to != get_self()) return;
        
        // Get pool ID - if not found, symbol is not supported
        string symbol_code = quantity.symbol.code().to_string();
        uint64_t pool_id = 0;
        
        // Active tokens
        if (symbol_code == "XMD") pool_id = 4067;
        else if (symbol_code == "XUSDC") pool_id = 4065;
        else if (symbol_code == "XUSDT") pool_id = 4066;
        else if (symbol_code == "XPYUSD") pool_id = 4068;
        else if (symbol_code == "XPAX") pool_id = 4070;
        // Previously commented out tokens - now active
        else if (symbol_code == "METAL") pool_id = 5926;
        else if (symbol_code == "XPR") pool_id = 4512;
        else if (symbol_code == "XXLM") pool_id = 6046;
        else if (symbol_code == "XSOL") pool_id = 6048;
        else if (symbol_code == "XXRP") pool_id = 5837;
        else if (symbol_code == "XHBAR") pool_id = 6045;
        else if (symbol_code == "XADA") pool_id = 6047;
        //else if (symbol_code == "XDOGE") pool_id = 7191;
        else return; // Symbol not supported

        // Check minimum amount
        if (quantity.amount < MIN_AMOUNT) return;
        
        // Split: 25% to nyra, 25% to swap, remainder stays in contract (implicit 50%)
        asset half = quantity;
        half.amount = quantity.amount / 2; // 25% with floor rounding


        // Swap 50% of total amount into the pool; leave the remainder in the contract
        asset swap_amount = half;

        if (swap_amount.amount > 0) {
            string memo_swap = "swapexactin#" + to_string(pool_id) + "#3.achaya#0.000001 EASY@mon3y#0";
            action(
                permission_level{get_self(), "active"_n},
                get_first_receiver(),
                "transfer"_n,
                std::make_tuple(get_self(), "swap.alcor"_n, swap_amount, memo_swap)
            ).send();
        }
    }
};
