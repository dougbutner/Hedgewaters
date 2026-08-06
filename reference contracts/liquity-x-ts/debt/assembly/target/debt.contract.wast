(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64 i64 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i64_i64_i64_=>_i64 (func (param i64 i64 i64) (result i64)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_upperbound_i64" (func $~lib/as-chain/env/db_upperbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $debt/assembly/debt.contract/DebtPoolDB i32 (i32.const 7))
 (global $debt/assembly/debt.contract/DebtPool i32 (i32.const 8))
 (global $debt/assembly/debt.contract/DebtConfigDB i32 (i32.const 24))
 (global $debt/assembly/debt.contract/DebtConfig i32 (i32.const 25))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) ",")
 (data (i32.const 2280) "\01\00\00\00\14\00\00\00o\00r\00a\00c\00l\00e\00.\00x\00p\00r")
 (data (i32.const 2316) ",")
 (data (i32.const 2328) "\01\00\00\00\14\00\00\00m\00a\00r\00k\00e\00t\00.\00x\00p\00r")
 (data (i32.const 2364) ",")
 (data (i32.const 2376) "\01\00\00\00\18\00\00\00p\00o\00s\00i\00t\00i\00o\00n\00.\00x\00p\00r")
 (data (i32.const 2412) ",")
 (data (i32.const 2424) "\01\00\00\00\10\00\00\00d\00e\00b\00t\00.\00x\00p\00r")
 (data (i32.const 2460) ",")
 (data (i32.const 2472) "\01\00\00\00\1a\00\00\00s\00t\00a\00b\00i\00l\00i\00t\00y\00.\00x\00p\00r")
 (data (i32.const 2508) "<")
 (data (i32.const 2520) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00d\00a\00t\00i\00o\00n\00.\00x\00p\00r")
 (data (i32.const 2572) ",")
 (data (i32.const 2584) "\01\00\00\00\1c\00\00\00g\00o\00v\00e\00r\00n\00a\00n\00c\00e\00.\00x\00p\00r")
 (data (i32.const 2620) ",")
 (data (i32.const 2632) "\01\00\00\00\12\00\00\00t\00o\00k\00e\00n\00.\00x\00p\00r")
 (data (i32.const 2668) "<")
 (data (i32.const 2680) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2732) "L")
 (data (i32.const 2744) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2812) "\\")
 (data (i32.const 2824) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2908) "<")
 (data (i32.const 2920) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 2972) "l")
 (data (i32.const 2984) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3084) "L")
 (data (i32.const 3096) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3164) "<")
 (data (i32.const 3176) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3228) "L")
 (data (i32.const 3240) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3308) "<")
 (data (i32.const 3320) "\01\00\00\00,\00\00\00g\00e\00t\00I\00d\00x\00D\00B\00:\00 \00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3372) "\\")
 (data (i32.const 3384) "\01\00\00\00J\00\00\00i\00d\00x\00U\00p\00d\00a\00t\00e\00:\00 \00v\00a\00l\00u\00e\00 \00b\00y\00 \00p\00r\00i\00m\00a\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 3468) "\1c")
 (data (i32.const 3500) "<")
 (data (i32.const 3512) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 3564) "<")
 (data (i32.const 3576) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01")
 (data (i32.const 3660) "L")
 (data (i32.const 3672) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3740) "\1c")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3804) "L")
 (data (i32.const 3816) "\01\00\00\008\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00e\00b\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3884) "<")
 (data (i32.const 3896) "\01\00\00\00,\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00o\00o\00l\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00a\00m\00o\00u\00n\00t")
 (data (i32.const 4012) "<")
 (data (i32.const 4024) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00e\00b\00t\00 \00p\00o\00o\00l")
 (data (i32.const 4076) "<")
 (data (i32.const 4088) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00i\00v\000")
 (data (i32.const 4140) "L")
 (data (i32.const 4152) "\01\00\00\00:\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00b\00a\00d\00 \00p\00o\00s\00i\00t\00i\00o\00n\00 \00i\00n\00d\00e\00x")
 (data (i32.const 4220) "<")
 (data (i32.const 4232) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00e\00b\00t\00 \00m\00a\00t\00h")
 (data (i32.const 4284) "<")
 (data (i32.const 4296) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00 \00b\00o\00r\00r\00o\00w")
 (data (i32.const 4348) ",")
 (data (i32.const 4360) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 4396) "\1c")
 (data (i32.const 4408) "+\00\00\00\0c\00\00\00\10\11\00\00\00\00\00\00@\0e")
 (data (i32.const 4428) ",")
 (data (i32.const 4440) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4488) "+\00\00\00\0c\00\00\00`\11\00\00\00\00\00\00@\0e")
 (data (i32.const 4508) "\1c")
 (data (i32.const 4520) "\01\00\00\00\n\00\00\00i\00s\00s\00u\00e")
 (data (i32.const 4540) "\1c")
 (data (i32.const 4552) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 4572) "<")
 (data (i32.const 4584) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00t\00o\00t\00a\00l\00 \00d\00e\00b\00t")
 (data (i32.const 4636) "<")
 (data (i32.const 4648) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00 \00r\00e\00p\00a\00y")
 (data (i32.const 4700) "\1c")
 (data (i32.const 4712) "\01\00\00\00\0c\00\00\00r\00e\00t\00i\00r\00e")
 (data (i32.const 4732) "\1c")
 (data (i32.const 4764) "L")
 (data (i32.const 4776) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4844) "\1c")
 (data (i32.const 4856) "+\00\00\00\0c\00\00\00\b0\12\00\00\00\00\00\00@\0e")
 (data (i32.const 4876) "\1c")
 (data (i32.const 4888) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4908) "\\")
 (data (i32.const 4920) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5004) ",")
 (data (i32.const 5016) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 5052) ",")
 (data (i32.const 5064) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 5100) "\1c")
 (data (i32.const 5112) "+\00\00\00\0c\00\00\00\a0\13\00\00\00\00\00\00\d0\13")
 (data (i32.const 5132) "\1c")
 (data (i32.const 5164) "\1c")
 (data (i32.const 5176) "+\00\00\00\0c\00\00\00\b0\12\00\00\00\00\00\00@\0e")
 (data (i32.const 5196) "\1c")
 (data (i32.const 5208) "+\00\00\00\0c\00\00\00\a0\13\00\00\00\00\00\00\d0\13")
 (data (i32.const 5228) ",")
 (data (i32.const 5240) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5276) ",")
 (data (i32.const 5288) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "DebtPoolDB" (global $debt/assembly/debt.contract/DebtPoolDB))
 (export "DebtPoolDB#get:db" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:db))
 (export "DebtPoolDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "DebtPoolDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:idxdbs))
 (export "DebtPoolDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "DebtPoolDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:nextPrimaryKey))
 (export "DebtPoolDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope))
 (export "DebtPoolDB#constructor" (func $debt/assembly/debt.contract/DebtPoolDB#constructor@varargs))
 (export "DebtPoolDB#set" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#set))
 (export "DebtPoolDB#store" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#store))
 (export "DebtPoolDB#update" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#update))
 (export "DebtPoolDB#remove" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#remove))
 (export "DebtPoolDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#removeEx))
 (export "DebtPoolDB#get" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get))
 (export "DebtPoolDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#getByKey))
 (export "DebtPoolDB#next" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#next))
 (export "DebtPoolDB#previous" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#previous))
 (export "DebtPoolDB#find" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find))
 (export "DebtPoolDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireFind@varargs))
 (export "DebtPoolDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireNotFind@varargs))
 (export "DebtPoolDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#lowerBound))
 (export "DebtPoolDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#upperBound))
 (export "DebtPoolDB#begin" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#begin))
 (export "DebtPoolDB#end" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#end))
 (export "DebtPoolDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#getIdxDB))
 (export "DebtPoolDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#idxUpdate))
 (export "DebtPoolDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#availablePrimaryKey))
 (export "DebtPool" (global $debt/assembly/debt.contract/DebtPool))
 (export "DebtPool#pack" (func $debt/assembly/debt.contract/DebtPool#pack))
 (export "DebtPool#unpack" (func $debt/assembly/debt.contract/DebtPool#unpack))
 (export "DebtPool#getSize" (func $debt/assembly/debt.contract/DebtPool#getSize))
 (export "DebtPool#getPrimaryValue" (func $debt/assembly/debt.contract/DebtPool#get:primary))
 (export "DebtPool#getSecondaryValue" (func $debt/assembly/debt.contract/DebtPool#getSecondaryValue))
 (export "DebtPool#setSecondaryValue" (func $debt/assembly/debt.contract/DebtPool#setSecondaryValue))
 (export "DebtPool#get:market" (func $debt/assembly/debt.contract/DebtPool#get:primary))
 (export "DebtPool#set:market" (func $~lib/as-chain/name/Name#set:N))
 (export "DebtPool#get:total_debt" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:nextPrimaryKey))
 (export "DebtPool#set:total_debt" (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope))
 (export "DebtPool#get:borrow_index" (func $debt/assembly/debt.contract/DebtPool#get:borrow_index))
 (export "DebtPool#set:borrow_index" (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table))
 (export "DebtPool#get:interest_accumulator" (func $debt/assembly/debt.contract/DebtPool#get:interest_accumulator))
 (export "DebtPool#set:interest_accumulator" (func $debt/assembly/debt.contract/DebtPool#set:interest_accumulator))
 (export "DebtPool#get:protocol_revenue" (func $debt/assembly/debt.contract/DebtPool#get:protocol_revenue))
 (export "DebtPool#set:protocol_revenue" (func $debt/assembly/debt.contract/DebtPool#set:protocol_revenue))
 (export "DebtPool#get:last_interest_update" (func $debt/assembly/debt.contract/DebtPool#get:last_interest_update))
 (export "DebtPool#set:last_interest_update" (func $debt/assembly/debt.contract/DebtPool#set:last_interest_update))
 (export "DebtPool#constructor" (func $debt/assembly/debt.contract/DebtPool#constructor@varargs))
 (export "DebtPool#get:primary" (func $debt/assembly/debt.contract/DebtPool#get:primary))
 (export "DebtPool#getTableName" (func $debt/assembly/debt.contract/DebtPool#getTableName))
 (export "DebtPool#getTableIndexes" (func $debt/assembly/debt.contract/DebtPool#getTableIndexes))
 (export "DebtPool.get:tableName" (func $debt/assembly/debt.contract/DebtPool.get:tableName))
 (export "DebtPool.tableIndexes" (func $debt/assembly/debt.contract/DebtPool.tableIndexes))
 (export "DebtPool.new" (func $debt/assembly/debt.contract/DebtPool.new@varargs))
 (export "DebtConfigDB" (global $debt/assembly/debt.contract/DebtConfigDB))
 (export "DebtConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:db))
 (export "DebtConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "DebtConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:idxdbs))
 (export "DebtConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "DebtConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:nextPrimaryKey))
 (export "DebtConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope))
 (export "DebtConfigDB#constructor" (func $debt/assembly/debt.contract/DebtConfigDB#constructor@varargs))
 (export "DebtConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#set))
 (export "DebtConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#store))
 (export "DebtConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#update))
 (export "DebtConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#remove))
 (export "DebtConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#removeEx))
 (export "DebtConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#get))
 (export "DebtConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#getByKey))
 (export "DebtConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#next))
 (export "DebtConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#previous))
 (export "DebtConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find))
 (export "DebtConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#requireFind@varargs))
 (export "DebtConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#requireNotFind@varargs))
 (export "DebtConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#lowerBound))
 (export "DebtConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#upperBound))
 (export "DebtConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#begin))
 (export "DebtConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#end))
 (export "DebtConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#getIdxDB))
 (export "DebtConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#idxUpdate))
 (export "DebtConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#availablePrimaryKey))
 (export "DebtConfig" (global $debt/assembly/debt.contract/DebtConfig))
 (export "DebtConfig#pack" (func $debt/assembly/debt.contract/DebtConfig#pack))
 (export "DebtConfig#unpack" (func $debt/assembly/debt.contract/DebtConfig#unpack))
 (export "DebtConfig#getSize" (func $debt/assembly/debt.contract/DebtConfig#getSize))
 (export "DebtConfig#getPrimaryValue" (func $debt/assembly/debt.contract/DebtConfig#getPrimaryValue))
 (export "DebtConfig#getSecondaryValue" (func $debt/assembly/debt.contract/DebtPool#getSecondaryValue))
 (export "DebtConfig#setSecondaryValue" (func $debt/assembly/debt.contract/DebtPool#setSecondaryValue))
 (export "DebtConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:db))
 (export "DebtConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "DebtConfig#get:position_contract" (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:idxdbs))
 (export "DebtConfig#set:position_contract" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "DebtConfig#get:token_contract" (func $debt/assembly/debt.contract/DebtConfig#get:token_contract))
 (export "DebtConfig#set:token_contract" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "DebtConfig#get:stable_symbol" (func $debt/assembly/debt.contract/DebtConfig#get:stable_symbol))
 (export "DebtConfig#set:stable_symbol" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "DebtConfig#constructor" (func $debt/assembly/debt.contract/DebtConfig#constructor@varargs))
 (export "DebtConfig#getTableName" (func $debt/assembly/debt.contract/DebtConfig#getTableName))
 (export "DebtConfig#getTableIndexes" (func $debt/assembly/debt.contract/DebtConfig#getTableIndexes))
 (export "DebtConfig.get:tableName" (func $debt/assembly/debt.contract/DebtConfig.get:tableName))
 (export "DebtConfig.tableIndexes" (func $debt/assembly/debt.contract/DebtConfig.tableIndexes))
 (export "DebtConfig.new" (func $debt/assembly/debt.contract/DebtConfig.new@varargs))
 (export "apply" (func $debt/assembly/debt.contract/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 11)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 12)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtPoolDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 7)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 15)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (block
    (local.set $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 1)
     )
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $2
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $1)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 16)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (i32.const 0)
    )
    (if
     (i32.or
      (i32.lt_u
       (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
        (local.get $1)
       )
       (local.get $2)
      )
      (i32.gt_u
       (local.get $2)
       (i32.const 1073741820)
      )
     )
     (unreachable)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (local.get $2)
    )
    (call $~lib/as-chain/env/eosio_assert
     (i32.const 0)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $debt/assembly/debt.contract/DebtPool#set:interest_accumulator (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#set:protocol_revenue (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#set:last_interest_update (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 48)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
   (local.get $0)
   (local.get $4)
  )
  (call $debt/assembly/debt.contract/DebtPool#set:protocol_revenue
   (local.get $0)
   (local.get $5)
  )
  (call $debt/assembly/debt.contract/DebtPool#set:last_interest_update
   (local.get $0)
   (local.get $6)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 17)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2832)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $debt/assembly/debt.contract/DebtPool#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:protocol_revenue
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:last_interest_update
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $debt/assembly/debt.contract/DebtPool#unpack
    (local.tee $0
     (call $debt/assembly/debt.contract/DebtPool#constructor
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 18)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $debt/assembly/debt.contract/DebtPool#getSize (param $0 i32) (result i32)
  (i32.const 48)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3104)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 48)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $debt/assembly/debt.contract/DebtPool#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtPool#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3184)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/memory/memory.fill
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 0)
    )
   )
   (i32.const 64)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 64)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 22)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $debt/assembly/debt.contract/DebtPool#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (i64.load
       (local.get $1)
      )
      (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#constructor
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_s
    (local.get $1)
    (i32.load offset=12
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3328)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3184)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $debt/assembly/debt.contract/DebtPool#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#end
           (local.get $0)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $1)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $0)
       (i64.add
        (local.get $2)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 5372683109642797056)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtPool.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $debt/assembly/debt.contract/DebtPool.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3488)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#get:borrow_index (param $0 i32) (result i64)
  (i64.load offset=16
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#get:interest_accumulator (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#get:protocol_revenue (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#get:last_interest_update (param $0 i32) (result i64)
  (i64.load offset=40
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#getTableName (param $0 i32) (result i32)
  (call $debt/assembly/debt.contract/DebtPool.get:tableName)
 )
 (func $debt/assembly/debt.contract/DebtPool#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $debt/assembly/debt.contract/DebtPool.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 27)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 28)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtConfig#getPrimaryValue (param $0 i32) (result i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 5343861503684509696)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 25)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 26)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 3648)
    )
    (i32.const 7)
   )
   (i32.const 3520)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (i32.const 3648)
     )
     (local.get $1)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $2
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (i32.const 3648)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (i32.const 3648)
             )
             (i32.const 1)
            )
            (local.get $1)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $2)
        (i64.const 65)
       )
      )
      (i32.const 3584)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $0)
      (i64.or
       (local.get $2)
       (i64.load
        (local.get $0)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $0)
      (i64.shl
       (i64.load
        (local.get $0)
       )
       (i64.const 8)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.load
    (local.get $0)
   )
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtConfig#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $4of4
   (block $3of4
    (block $2of4
     (block $1of4
      (block $0of4
       (block $outOfRange
        (br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
         (global.get $~argumentsLength)
        )
       )
       (unreachable)
      )
      (local.set $1
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (local.set $2
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $3
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (local.set $4
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $debt/assembly/debt.contract/DebtConfig#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $debt/assembly/debt.contract/DebtConfig#unpack
    (local.tee $0
     (call $debt/assembly/debt.contract/DebtConfig#constructor@varargs
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=12
    (local.get $0)
   )
  )
  (i32.const 32)
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3680)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $debt/assembly/debt.contract/DebtConfig#getSize
      (local.get $0)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $debt/assembly/debt.contract/DebtConfig#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
      (local.get $1)
      (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $debt/assembly/debt.contract/DebtConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
       (local.get $1)
      )
      (call $debt/assembly/debt.contract/DebtPool#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
      (local.get $0)
      (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $debt/assembly/debt.contract/DebtConfig#constructor@varargs
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#removeEx
   (local.get $0)
   (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $debt/assembly/debt.contract/DebtPool#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtConfig>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $debt/assembly/debt.contract/DebtConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
      (local.get $0)
      (i64.add
       (local.get $1)
       (i64.const 1)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 5343861503684509696)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $debt/assembly/debt.contract/DebtConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3760)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $3
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 14)
     (i32.const 3792)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#get:token_contract (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#get:stable_symbol (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $debt/assembly/debt.contract/DebtConfig#getTableName (param $0 i32) (result i32)
  (call $debt/assembly/debt.contract/DebtConfig.get:tableName)
 )
 (func $debt/assembly/debt.contract/DebtConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $debt/assembly/debt.contract/DebtConfig.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<debt/assembly/debt.contract/DebtConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (i32.eqz
      (local.tee $0
       (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtConfig>#getValue
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (return
     (local.get $0)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $debt/assembly/debt.contract/DebtConfig#constructor@varargs
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
  )
 )
 (func $debt/assembly/debt.contract/initPoolAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 38)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 37)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $debt/assembly/debt.contract/borrowAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:protocol_revenue
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:last_interest_update
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 4032)
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $shared/math/mulDiv (param $0 i64) (param $1 i64) (param $2 i64) (result i64)
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $2)
    (i64.const 0)
   )
   (i32.const 4096)
  )
  (i64.add
   (i64.mul
    (local.get $1)
    (i64.div_u
     (local.get $0)
     (local.get $2)
    )
   )
   (i64.div_u
    (i64.mul
     (local.get $1)
     (i64.rem_u
      (local.get $0)
      (local.get $2)
     )
    )
    (local.get $2)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtContract#accrue (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (if
   (i64.ne
    (local.tee $2
     (i64.sub
      (i64.extend_i32_u
       (local.tee $3
        (call $~lib/as-chain/system/currentTimeSec)
       )
      )
      (i64.load offset=40
       (local.get $0)
      )
     )
    )
    (i64.const 0)
   )
   (block
    (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
     (local.get $0)
     (block $__inlined_func$shared/math/accrueBorrowIndex (result i64)
      (drop
       (br_if $__inlined_func$shared/math/accrueBorrowIndex
        (local.tee $4
         (i64.load offset=16
          (local.get $0)
         )
        )
        (select
         (i32.const 1)
         (i64.eqz
          (local.get $1)
         )
         (i64.eqz
          (local.get $2)
         )
        )
       )
      )
      (i64.add
       (call $shared/math/mulDiv
        (call $shared/math/mulDiv
         (i64.const 1000000000000000000)
         (local.get $1)
         (i64.const 10000)
        )
        (local.get $2)
        (i64.const 31536000)
       )
       (local.get $4)
      )
     )
    )
    (call $debt/assembly/debt.contract/DebtPool#set:last_interest_update
     (local.get $0)
     (i64.extend_i32_u
      (local.get $3)
     )
    )
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 40)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 3648)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 3648)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 3648)
     )
    )
   )
   (local.set $0
    (i32.const 3648)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 3648)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 3648)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (i32.const 4416)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4416)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (i32.const 4496)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 4496)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 44)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $0)
     (i64.const 0)
    )
   )
   (local.set $2
    (call $~lib/as-chain/name/S2N
     (i32.const 4560)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/as-chain/action/PermissionLevel#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 47)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (local.set $2
    (i32.load offset=4
     (local.get $0)
    )
   )
   (call $~lib/as-chain/serializer/Encoder#incPos
    (local.get $0)
    (i32.const 1)
   )
   (i32.store8
    (i32.add
     (local.get $2)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $shared/inline/IssueAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=8
         (local.get $0)
        )
       )
       (i32.const 24)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/repayAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $shared/inline/RetireAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=4
         (local.get $0)
        )
       )
       (i32.const 16)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $debt/assembly/debt.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $3
       (call $~lib/rt/stub/__new
        (i32.const 20)
        (i32.const 31)
       )
      )
     )
     (local.set $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 32)
      )
     )
    )
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $6)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 33)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $debt/assembly/debt.contract/DebtPool#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $debt/assembly/debt.contract/DebtPool.get:tableName)
    (call $debt/assembly/debt.contract/DebtPool#getTableIndexes
     (local.get $7)
     (local.get $5)
     (local.get $5)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $3)
   (local.get $6)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 34)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (i32.const 0)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $debt/assembly/debt.contract/DebtConfig#constructor@varargs
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (i64.load
    (local.tee $7
     (call $debt/assembly/debt.contract/DebtConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor@varargs
    (local.get $5)
    (local.get $5)
    (local.get $7)
   )
  )
  (i32.store offset=16
   (local.tee $4
    (local.get $3)
   )
   (local.get $6)
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u8>#constructor
       (local.tee $5
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $5)
   )
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8421045207927095296)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 35)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $5)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $5)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $debt/assembly/debt.contract/DebtConfig#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $6
         (i32.load
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $9
         (i32.load offset=12
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $6)
      )
      (call $~lib/as-chain/system/check
       (i64.eqz
        (i64.load
         (i32.load
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<debt/assembly/debt.contract/DebtConfig>#get
           (i32.load offset=16
            (local.get $4)
           )
          )
         )
        )
       )
       (i32.const 3824)
      )
      (local.set $5
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $6
       (call $debt/assembly/debt.contract/DebtConfig#constructor
        (i32.const 0)
        (local.get $6)
        (local.get $7)
        (local.get $8)
        (local.get $9)
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
        (local.tee $8
         (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $8)
        (local.get $6)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#store
         (i32.load offset=8
          (local.get $5)
         )
         (local.get $6)
         (local.get $7)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8421057107419201536)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 36)
        )
       )
       (i64.const 0)
      )
      (drop
       (call $debt/assembly/debt.contract/initPoolAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (local.set $0
       (i64.load
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<debt/assembly/debt.contract/DebtConfig>#get
         (i32.load offset=16
          (local.get $4)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
         (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#find
          (i32.load
           (i32.load offset=12
            (local.get $4)
           )
          )
          (local.get $0)
         )
        )
       )
       (i32.const 3904)
      )
      (local.set $5
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $6
       (call $debt/assembly/debt.contract/DebtPool#constructor
        (i32.const 0)
        (local.get $0)
        (i64.const 0)
        (i64.const 1000000000000000000)
        (i64.const 0)
        (i64.const 0)
        (i64.extend_i32_u
         (call $~lib/as-chain/system/currentTimeSec)
        )
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireNotFind
        (i32.load
         (local.get $5)
        )
        (local.tee $0
         (i64.load
          (local.get $6)
         )
        )
        (i32.const 1200)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#store
        (i32.load
         (local.get $5)
        )
        (local.get $6)
        (local.get $7)
       )
      )
      (if
       (i64.ge_u
        (local.get $0)
        (i64.load offset=8
         (local.get $5)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
        (local.get $5)
        (select
         (i64.const -2)
         (i64.add
          (local.get $0)
          (i64.const 1)
         )
         (i64.ge_u
          (local.get $0)
          (i64.const -2)
         )
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4408877181673930752)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 48)
         (i32.const 39)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
       (local.get $5)
       (i64.const 0)
      )
      (call $debt/assembly/debt.contract/DebtPool#set:protocol_revenue
       (local.get $5)
       (i64.const 0)
      )
      (call $debt/assembly/debt.contract/DebtPool#set:last_interest_update
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $debt/assembly/debt.contract/borrowAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (local.set $10
       (i64.load offset=8
        (local.get $5)
       )
      )
      (local.set $1
       (i64.load offset=16
        (local.get $5)
       )
      )
      (local.set $12
       (i64.load offset=24
        (local.get $5)
       )
      )
      (local.set $11
       (i64.load offset=32
        (local.get $5)
       )
      )
      (local.set $0
       (i64.load offset=40
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $7)
      )
      (call $~lib/as-chain/system/check
       (i64.ne
        (local.get $0)
        (i64.const 0)
       )
       (i32.const 3968)
      )
      (call $~lib/as-chain/system/check
       (i64.le_u
        (block $__inlined_func$shared/math/currentDebt (result i64)
         (local.set $10
          (i64.load offset=16
           (local.tee $5
            (call $debt/assembly/debt.contract/DebtContract#accrue
             (call $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#requireGet
              (i32.load offset=12
               (local.get $4)
              )
              (local.get $10)
             )
             (local.get $11)
            )
           )
          )
         )
         (call $~lib/as-chain/system/check
          (i64.ne
           (local.tee $11
            (select
             (local.get $12)
             (i64.const 1000000000000000000)
             (i64.ne
              (local.get $12)
              (i64.const 0)
             )
            )
           )
           (i64.const 0)
          )
          (i32.const 4160)
         )
         (drop
          (br_if $__inlined_func$shared/math/currentDebt
           (i64.const 0)
           (i64.eqz
            (local.get $1)
           )
          )
         )
         (call $shared/math/mulDiv
          (local.get $1)
          (local.get $10)
          (local.get $11)
         )
        )
        (i64.add
         (local.get $0)
         (i64.load offset=8
          (local.get $5)
         )
        )
       )
       (i32.const 4240)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $5)
       (i64.add
        (local.get $0)
        (i64.load offset=8
         (local.get $5)
        )
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $5)
       (i32.load
        (local.get $4)
       )
      )
      (local.set $8
       (i32.load offset=8
        (local.tee $5
         (call $~lib/proton-tsc/modules/store/singleton/Singleton<debt/assembly/debt.contract/DebtConfig>#get
          (i32.load offset=16
           (local.get $4)
          )
         )
        )
       )
      )
      (local.set $9
       (i32.load
        (local.get $4)
       )
      )
      (local.set $13
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $0)
        (i32.load offset=12
         (local.get $5)
        )
       )
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 4)
         (i32.const 42)
        )
       )
       (i32.const 0)
      )
      (local.set $0
       (call $~lib/as-chain/name/S2N
        (i32.const 4528)
       )
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $6
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 5)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $6)
       (local.get $0)
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.get $5)
       (local.get $6)
      )
      (global.set $~argumentsLength
       (i32.const 1)
      )
      (local.set $6
       (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
        (local.get $9)
       )
      )
      (local.set $9
       (i32.load
        (local.get $5)
       )
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 45)
        )
       )
       (local.get $9)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $5)
       (local.get $8)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $5)
       (local.get $6)
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $6
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 41)
        )
       )
       (local.get $7)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $6)
       (local.get $13)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $6)
       (i32.const 4304)
      )
      (drop
       (i32.load offset=4
        (local.tee $7
         (call $~lib/rt/__newArray
          (i32.const 1)
          (i32.const 2)
          (i32.const 46)
          (i32.const 0)
         )
        )
       )
      )
      (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
       (local.get $7)
       (i32.const 0)
       (i32.load offset=8
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/Action#send
       (call $~lib/as-chain/action/Action#constructor
        (i32.load offset=4
         (local.get $5)
        )
        (i32.load
         (local.get $5)
        )
        (local.get $7)
        (call $shared/inline/IssueAction#pack
         (local.get $6)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4996058790823460864)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 32)
         (i32.const 48)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (call $debt/assembly/debt.contract/DebtPool#set:interest_accumulator
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $debt/assembly/debt.contract/repayAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (local.set $1
       (i64.load offset=8
        (local.get $5)
       )
      )
      (local.set $0
       (i64.load offset=16
        (local.get $5)
       )
      )
      (local.set $2
       (i64.load offset=24
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $3)
      )
      (call $~lib/as-chain/system/check
       (i64.ne
        (local.get $0)
        (i64.const 0)
       )
       (i32.const 3968)
      )
      (call $~lib/as-chain/system/check
       (i64.le_u
        (local.get $0)
        (i64.load offset=8
         (local.tee $5
          (call $debt/assembly/debt.contract/DebtContract#accrue
           (call $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#requireGet
            (i32.load offset=12
             (local.get $4)
            )
            (local.get $1)
           )
           (local.get $2)
          )
         )
        )
       )
       (i32.const 4592)
      )
      (call $~lib/as-chain/dbi64/DBI64<debt/assembly/debt.contract/DebtPool>#set:scope
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $5)
        )
        (local.get $0)
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<debt/assembly/debt.contract/DebtPool>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $5)
       (i32.load
        (local.get $4)
       )
      )
      (local.set $6
       (i32.load offset=8
        (local.tee $5
         (call $~lib/proton-tsc/modules/store/singleton/Singleton<debt/assembly/debt.contract/DebtConfig>#get
          (i32.load offset=16
           (local.get $4)
          )
         )
        )
       )
      )
      (local.set $4
       (i32.load
        (local.get $4)
       )
      )
      (local.set $7
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $0)
        (i32.load offset=12
         (local.get $5)
        )
       )
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 4)
         (i32.const 50)
        )
       )
       (i32.const 0)
      )
      (local.set $0
       (call $~lib/as-chain/name/S2N
        (i32.const 4720)
       )
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 5)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $3)
       (local.get $0)
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.get $5)
       (local.get $3)
      )
      (global.set $~argumentsLength
       (i32.const 1)
      )
      (local.set $3
       (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
        (local.get $4)
       )
      )
      (local.set $4
       (i32.load
        (local.get $5)
       )
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 51)
        )
       )
       (local.get $4)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $5)
       (local.get $6)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $5)
       (local.get $3)
      )
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 49)
        )
       )
       (local.get $7)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 4656)
      )
      (drop
       (i32.load offset=4
        (local.tee $4
         (call $~lib/rt/__newArray
          (i32.const 1)
          (i32.const 2)
          (i32.const 46)
          (i32.const 0)
         )
        )
       )
      )
      (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
       (local.get $4)
       (i32.const 0)
       (i32.load offset=8
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/Action#send
       (call $~lib/as-chain/action/Action#constructor
        (i32.load offset=4
         (local.get $5)
        )
        (i32.load
         (local.get $5)
        )
        (local.get $4)
        (call $shared/inline/RetireAction#pack
         (local.get $3)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtPoolDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 14)
     (i32.const 4752)
    )
   )
  )
  (call $debt/assembly/debt.contract/DebtPoolDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (local.get $0)
   )
   (return
    (i32.const 4896)
   )
  )
  (if
   (i64.le_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (block
    (local.set $4
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (select
          (select
           (i32.add
            (i32.ge_u
             (local.tee $1
              (i32.wrap_i64
               (local.get $0)
              )
             )
             (i32.const 10)
            )
            (i32.const 1)
           )
           (i32.add
            (i32.add
             (i32.ge_u
              (local.get $1)
              (i32.const 10000)
             )
             (i32.const 3)
            )
            (i32.ge_u
             (local.get $1)
             (i32.const 1000)
            )
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 100)
           )
          )
          (select
           (i32.add
            (i32.ge_u
             (local.get $1)
             (i32.const 1000000)
            )
            (i32.const 6)
           )
           (i32.add
            (i32.add
             (i32.ge_u
              (local.get $1)
              (i32.const 1000000000)
             )
             (i32.const 8)
            )
            (i32.ge_u
             (local.get $1)
             (i32.const 100000000)
            )
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 10000000)
           )
          )
          (i32.lt_u
           (local.get $1)
           (i32.const 100000)
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
    )
    (loop $do-continue|0
     (i32.store16
      (i32.add
       (local.get $4)
       (i32.shl
        (local.tee $2
         (i32.sub
          (local.get $2)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.add
       (i32.rem_u
        (local.get $1)
        (i32.const 10)
       )
       (i32.const 48)
      )
     )
     (br_if $do-continue|0
      (local.tee $1
       (i32.div_u
        (local.get $1)
        (i32.const 10)
       )
      )
     )
    )
   )
   (block
    (local.set $2
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $1
         (select
          (select
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000)
             )
             (i32.const 10)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000)
            )
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000000)
             )
             (i32.const 13)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 1000000000000)
           )
          )
          (select
           (i32.add
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000000)
            )
            (i32.const 16)
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const -8446744073709551616)
             )
             (i32.const 18)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 1000000000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 100000000000000000)
           )
          )
          (i64.lt_u
           (local.get $0)
           (i64.const 1000000000000000)
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
    )
    (loop $do-continue|00
     (i32.store16
      (i32.add
       (local.get $2)
       (i32.shl
        (local.tee $1
         (i32.sub
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.add
       (i32.wrap_i64
        (i64.rem_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i32.const 48)
      )
     )
     (br_if $do-continue|00
      (i64.ne
       (local.tee $0
        (i64.div_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i64.const 0)
      )
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (i32.const 4864)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4864)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (i32.const 5120)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5120)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtPool>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (block $6of6
   (block $5of6
    (block $4of6
     (block $3of6
      (block $2of6
       (block $1of6
        (block $0of6
         (block $outOfRange
          (br_table $0of6 $1of6 $2of6 $3of6 $4of6 $5of6 $6of6 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $1
         (i64.const 0)
        )
       )
       (local.set $2
        (i64.const 0)
       )
      )
      (local.set $3
       (i64.const 0)
      )
     )
     (local.set $4
      (i64.const 0)
     )
    )
    (local.set $5
     (i64.const 0)
    )
   )
   (local.set $6
    (i64.const 0)
   )
  )
  (call $debt/assembly/debt.contract/DebtPool#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )
 (func $debt/assembly/debt.contract/DebtPool.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $debt/assembly/debt.contract/DebtPoolDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $debt/assembly/debt.contract/DebtPool.get:tableName)
   (call $debt/assembly/debt.contract/DebtPool.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $debt/assembly/debt.contract/DebtConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 14)
     (i32.const 5152)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (i32.const 5184)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5184)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (i32.const 5216)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5216)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<debt/assembly/debt.contract/DebtPool>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $debt/assembly/debt.contract/DebtConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $3
   (call $debt/assembly/debt.contract/DebtConfig.get:tableName)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 30)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (call $~lib/as-chain/mi/MultiIndex<debt/assembly/debt.contract/DebtConfig>#constructor@varargs
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (result i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (block (result i32)
      (local.set $2
       (i32.load8_u
        (i32.add
         (i32.load offset=4
          (i32.load
           (local.get $0)
          )
         )
         (i32.load offset=4
          (local.get $0)
         )
        )
       )
      )
      (call $~lib/as-chain/serializer/Decoder#incPos
       (local.get $0)
       (i32.const 1)
      )
      (i32.shl
       (i32.and
        (local.get $2)
        (i32.const 127)
       )
       (local.get $3)
      )
     )
     (local.get $1)
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $2)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.tee $0
    (i32.load
     (local.get $2)
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $2)
   )
  )
  (local.set $3
   (local.tee $9
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (local.get $9)
    )
    (block
     (local.set $10
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $6)
       (i32.load offset=12
        (local.tee $1
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $6)
         (i32.const 0)
        )
        (unreachable)
       )
       (if
        (i32.gt_u
         (local.tee $7
          (local.tee $11
           (i32.add
            (local.get $6)
            (i32.const 1)
           )
          )
         )
         (i32.shr_u
          (local.tee $8
           (i32.load offset=8
            (local.get $1)
           )
          )
          (i32.const 2)
         )
        )
        (block
         (if
          (i32.gt_u
           (local.get $7)
           (i32.const 268435455)
          )
          (unreachable)
         )
         (call $~lib/memory/memory.fill
          (i32.add
           (local.get $8)
           (local.tee $3
            (call $~lib/rt/stub/__renew
             (local.tee $4
              (i32.load
               (local.get $1)
              )
             )
             (local.tee $5
              (select
               (local.tee $3
                (select
                 (local.tee $5
                  (i32.shl
                   (local.get $8)
                   (i32.const 1)
                  )
                 )
                 (i32.const 1073741820)
                 (i32.lt_u
                  (local.get $5)
                  (i32.const 1073741820)
                 )
                )
               )
               (local.tee $5
                (i32.shl
                 (select
                  (local.get $7)
                  (i32.const 8)
                  (i32.gt_u
                   (local.get $7)
                   (i32.const 8)
                  )
                 )
                 (i32.const 2)
                )
               )
               (i32.gt_u
                (local.get $3)
                (local.get $5)
               )
              )
             )
            )
           )
          )
          (i32.sub
           (local.get $5)
           (local.get $8)
          )
         )
         (if
          (i32.ne
           (local.get $3)
           (local.get $4)
          )
          (block
           (i32.store
            (local.get $1)
            (local.get $3)
           )
           (i32.store offset=4
            (local.get $1)
            (local.get $3)
           )
          )
         )
         (i32.store offset=8
          (local.get $1)
          (local.get $5)
         )
        )
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $1)
        (local.get $11)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
      (local.get $1)
      (local.get $6)
      (local.get $10)
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $2)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $6
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $2)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $2)
      )
     )
     (i32.load offset=4
      (local.get $2)
     )
    )
    (local.get $6)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case14
       (block $case13
        (block $case12
         (block $case11
          (block $case10
           (block $case9
            (block $case7
             (block $case6
              (block $case5
               (block $case4
                (block $case0
                 (br_table $case12 $default $default $case0 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $folding-inner0 $case13 $default $default $default $default $default $default $default $default $folding-inner0 $folding-inner1 $case9 $folding-inner1 $case4 $case14 $case6 $default $default $case10 $default $default $case11 $case5 $case7 $default
                  (i32.sub
                   (i32.load
                    (i32.sub
                     (local.get $0)
                     (i32.const 8)
                    )
                   )
                   (i32.const 5)
                  )
                 )
                )
                (return
                 (call $debt/assembly/debt.contract/DebtPool#unpack
                  (local.get $0)
                  (local.get $1)
                 )
                )
               )
               (return
                (call $debt/assembly/debt.contract/borrowAction#unpack
                 (local.get $0)
                 (local.get $1)
                )
               )
              )
              (return
               (call $debt/assembly/debt.contract/repayAction#unpack
                (local.get $0)
                (local.get $1)
               )
              )
             )
             (local.set $1
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
             (call $~lib/as-chain/name/Name#set:N
              (local.tee $2
               (call $~lib/rt/stub/__new
                (i32.const 8)
                (i32.const 5)
               )
              )
              (i64.const 0)
             )
             (call $~lib/as-chain/name/Name#set:N
              (local.get $2)
              (i64.const 0)
             )
             (call $~lib/as-chain/serializer/Decoder#unpack
              (local.get $1)
              (local.get $2)
             )
             (call $~lib/rt/common/BLOCK#set:mmInfo
              (local.get $0)
              (local.get $2)
             )
             (global.set $~argumentsLength
              (i32.const 0)
             )
             (call $~lib/as-chain/serializer/Decoder#unpack
              (local.get $1)
              (local.tee $2
               (call $~lib/as-chain/asset/Asset#constructor@varargs)
              )
             )
             (call $~lib/rt/common/OBJECT#set:gcInfo
              (local.get $0)
              (local.get $2)
             )
             (call $~lib/rt/common/OBJECT#set:gcInfo2
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackString
               (local.get $1)
              )
             )
             (return
              (i32.load offset=4
               (local.get $1)
              )
             )
            )
            (local.set $1
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $1)
             )
            )
            (global.set $~argumentsLength
             (i32.const 0)
            )
            (call $~lib/as-chain/serializer/Decoder#unpack
             (local.get $1)
             (local.tee $2
              (call $~lib/as-chain/asset/Asset#constructor@varargs)
             )
            )
            (call $~lib/rt/common/BLOCK#set:mmInfo
             (local.get $0)
             (local.get $2)
            )
            (call $~lib/rt/common/OBJECT#set:gcInfo
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackString
              (local.get $1)
             )
            )
            (br $folding-inner2)
           )
           (call $~lib/as-chain/serializer/Decoder#unpack
            (local.tee $1
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $1)
             )
            )
            (i32.load
             (local.get $0)
            )
           )
           (br $folding-inner2)
          )
          (call $~lib/rt/common/BLOCK#set:mmInfo
           (local.get $0)
           (call $~lib/as-chain/serializer/Decoder#unpackName
            (local.tee $1
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $1)
             )
            )
           )
          )
          (call $~lib/rt/common/OBJECT#set:gcInfo
           (local.get $0)
           (call $~lib/as-chain/serializer/Decoder#unpackName
            (local.get $1)
           )
          )
          (br $folding-inner2)
         )
         (return
          (call $~lib/as-chain/action/Action#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (call $~lib/as-chain/name/Name#set:N
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
          (call $~lib/as-chain/serializer/Decoder#constructor
           (local.get $1)
          )
         )
        )
        (return
         (i32.const 8)
        )
       )
       (call $~lib/as-chain/name/Name#set:N
        (local.get $0)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (local.tee $1
          (call $~lib/as-chain/serializer/Decoder#constructor
           (local.get $1)
          )
         )
        )
       )
       (call $~lib/as-chain/system/check
        (call $~lib/as-chain/asset/Symbol#isValid
         (local.get $0)
        )
        (i32.const 5248)
       )
       (br $folding-inner2)
      )
      (local.set $3
       (i64.load
        (i32.add
         (i32.load offset=4
          (i32.load
           (local.tee $2
            (call $~lib/as-chain/serializer/Decoder#constructor
             (local.get $1)
            )
           )
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
       )
      )
      (call $~lib/as-chain/serializer/Decoder#incPos
       (local.get $2)
       (i32.const 8)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $0)
       (local.get $3)
      )
      (call $~lib/as-chain/serializer/Decoder#unpack
       (local.get $2)
       (i32.load offset=8
        (local.get $0)
       )
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (if (result i32)
         (i64.ge_s
          (i64.load
           (local.tee $1
            (local.get $0)
           )
          )
          (i64.const -4611686018427387903)
         )
         (i64.le_s
          (i64.load
           (local.get $1)
          )
          (i64.const 4611686018427387903)
         )
         (i32.const 0)
        )
        (call $~lib/as-chain/asset/Symbol#isValid
         (i32.load offset=8
          (local.get $1)
         )
        )
        (i32.const 0)
       )
       (i32.const 5296)
      )
      (return
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
     (unreachable)
    )
    (return
     (call $debt/assembly/debt.contract/DebtConfig#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (call $debt/assembly/debt.contract/initPoolAction#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case14
      (block $case12
       (block $case11
        (block $case10
         (block $case9
          (block $case8
           (block $case7
            (block $case6
             (block $case5
              (block $case4
               (block $case2
                (block $case1
                 (block $case0
                  (br_table $case12 $default $default $case0 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case1 $folding-inner0 $default $default $default $default $default $default $default $default $case2 $folding-inner0 $case9 $case8 $case4 $case14 $case6 $default $default $case10 $default $default $case11 $case5 $case7 $default
                   (i32.sub
                    (i32.load
                     (i32.sub
                      (local.get $0)
                      (i32.const 8)
                     )
                    )
                    (i32.const 5)
                   )
                  )
                 )
                 (return
                  (call $debt/assembly/debt.contract/DebtPool#pack
                   (local.get $0)
                  )
                 )
                )
                (return
                 (call $debt/assembly/debt.contract/DebtConfig#pack
                  (local.get $0)
                 )
                )
               )
               (if
                (i32.eqz
                 (i32.load
                  (local.get $0)
                 )
                )
                (unreachable)
               )
               (if
                (i32.eqz
                 (i32.load offset=4
                  (local.get $0)
                 )
                )
                (unreachable)
               )
               (if
                (i32.eqz
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
                (unreachable)
               )
               (if
                (i32.eqz
                 (i32.load offset=12
                  (local.get $0)
                 )
                )
                (unreachable)
               )
               (local.set $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 32)
                )
               )
               (if
                (i32.eqz
                 (local.tee $2
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (unreachable)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.get $1)
                (local.get $2)
               )
               (if
                (i32.eqz
                 (local.tee $2
                  (i32.load offset=4
                   (local.get $0)
                  )
                 )
                )
                (unreachable)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.get $1)
                (local.get $2)
               )
               (if
                (i32.eqz
                 (local.tee $2
                  (i32.load offset=8
                   (local.get $0)
                  )
                 )
                )
                (unreachable)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.get $1)
                (local.get $2)
               )
               (if
                (i32.eqz
                 (local.tee $0
                  (i32.load offset=12
                   (local.get $0)
                  )
                 )
                )
                (unreachable)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.get $1)
                (local.get $0)
               )
               (return
                (call $~lib/as-chain/serializer/Encoder#getBytes
                 (local.get $1)
                )
               )
              )
              (if
               (i32.eqz
                (i32.load
                 (local.get $0)
                )
               )
               (unreachable)
              )
              (local.set $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 48)
               )
              )
              (if
               (i32.eqz
                (local.tee $2
                 (i32.load
                  (local.get $0)
                 )
                )
               )
               (unreachable)
              )
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.get $1)
               (local.get $2)
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.get $1)
               (i64.load offset=8
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.get $1)
               (i64.load offset=16
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.get $1)
               (i64.load offset=24
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.get $1)
               (i64.load offset=32
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.get $1)
               (i64.load offset=40
                (local.get $0)
               )
              )
              (br $folding-inner1)
             )
             (if
              (i32.eqz
               (i32.load
                (local.get $0)
               )
              )
              (unreachable)
             )
             (local.set $1
              (call $~lib/as-chain/serializer/Encoder#constructor
               (i32.const 32)
              )
             )
             (if
              (i32.eqz
               (local.tee $2
                (i32.load
                 (local.get $0)
                )
               )
              )
              (unreachable)
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.get $1)
              (local.get $2)
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
              (local.get $1)
              (i64.load offset=8
               (local.get $0)
              )
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
              (local.get $1)
              (i64.load offset=16
               (local.get $0)
              )
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
              (local.get $1)
              (i64.load offset=24
               (local.get $0)
              )
             )
             (br $folding-inner1)
            )
            (return
             (call $shared/inline/IssueAction#pack
              (local.get $0)
             )
            )
           )
           (return
            (call $shared/inline/RetireAction#pack
             (local.get $0)
            )
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
           (local.tee $1
            (call $~lib/as-chain/serializer/Encoder#constructor
             (i32.const 8)
            )
           )
           (i64.load
            (local.get $0)
           )
          )
          (br $folding-inner1)
         )
         (call $~lib/as-chain/serializer/Encoder#pack
          (local.tee $1
           (call $~lib/as-chain/serializer/Encoder#constructor
            (i32.const 8)
           )
          )
          (i32.load
           (local.get $0)
          )
         )
         (br $folding-inner1)
        )
        (call $~lib/as-chain/serializer/Encoder#packName
         (local.tee $1
          (call $~lib/as-chain/serializer/Encoder#constructor
           (i32.const 16)
          )
         )
         (i32.load
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packName
         (local.get $1)
         (i32.load offset=4
          (local.get $0)
         )
        )
        (br $folding-inner1)
       )
       (return
        (call $~lib/as-chain/action/Action#pack
         (local.get $0)
        )
       )
      )
      (i64.store
       (i32.load offset=4
        (local.tee $1
         (call $~lib/array/Array<u8>#constructor
          (i32.const 8)
         )
        )
       )
       (i64.load
        (local.get $0)
       )
      )
      (return
       (local.get $1)
      )
     )
     (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
      (local.tee $1
       (call $~lib/as-chain/serializer/Encoder#constructor
        (i32.const 16)
       )
      )
      (i64.load
       (local.get $0)
      )
     )
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (i32.load offset=8
       (local.get $0)
      )
     )
     (br $folding-inner1)
    )
    (unreachable)
   )
   (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Encoder#constructor
      (i32.const 8)
     )
    )
    (i64.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~setArgumentsLength (param $0 i32)
  (global.set $~argumentsLength
   (local.get $0)
  )
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 5324)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
 )
)
