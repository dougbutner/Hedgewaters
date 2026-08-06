(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i64_i32_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i32 i64 i64 i64 i64) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
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
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $stability/assembly/stability.contract/StabilityPoolDB i32 (i32.const 7))
 (global $stability/assembly/stability.contract/StabilityPool i32 (i32.const 8))
 (global $stability/assembly/stability.contract/StabilityDepositDB i32 (i32.const 24))
 (global $stability/assembly/stability.contract/StabilityDeposit i32 (i32.const 25))
 (global $stability/assembly/stability.contract/StabilityConfigDB i32 (i32.const 29))
 (global $stability/assembly/stability.contract/StabilityConfig i32 (i32.const 30))
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
 (data (i32.const 3500) "L")
 (data (i32.const 3512) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3644) "\1c")
 (data (i32.const 3676) "\\")
 (data (i32.const 3688) "\01\00\00\00B\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00s\00t\00a\00b\00i\00l\00i\00t\00y\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3772) "<")
 (data (i32.const 3784) "\01\00\00\00,\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00o\00o\00l\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 3836) "<")
 (data (i32.const 3848) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00s\00t\00a\00b\00 \00p\00o\00o\00l")
 (data (i32.const 3900) "<")
 (data (i32.const 3912) "\01\00\00\00&\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00e\00m\00p\00t\00y\00 \00s\00p")
 (data (i32.const 3964) "\1c")
 (data (i32.const 3976) "\01")
 (data (i32.const 3996) "<")
 (data (i32.const 4008) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 4060) "<")
 (data (i32.const 4072) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 4124) "<")
 (data (i32.const 4136) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00b\00a\00d\00 \00t\00o\00k\00e\00n")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\01\00\00\00\06\00\00\00s\00p\00:")
 (data (i32.const 4220) "<")
 (data (i32.const 4232) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00e\00m\00o")
 (data (i32.const 4284) "<")
 (data (i32.const 4296) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00a\00m\00o\00u\00n\00t")
 (data (i32.const 4348) "<")
 (data (i32.const 4360) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00a\00r\00s\00e")
 (data (i32.const 4412) "<")
 (data (i32.const 4424) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00i\00g\00i\00t")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4508) "L")
 (data (i32.const 4520) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4588) "\1c")
 (data (i32.const 4600) "0\00\00\00\0c\00\00\00\b0\11\00\00\00\00\00\00\90\0f")
 (data (i32.const 4620) "\1c")
 (data (i32.const 4632) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4652) "\\")
 (data (i32.const 4664) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4748) ",")
 (data (i32.const 4760) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4796) ",")
 (data (i32.const 4808) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 4844) "\1c")
 (data (i32.const 4856) "0\00\00\00\0c\00\00\00\a0\12\00\00\00\00\00\00\d0\12")
 (data (i32.const 4876) "\1c")
 (data (i32.const 4908) "\1c")
 (data (i32.const 4920) "0\00\00\00\0c\00\00\00\b0\11\00\00\00\00\00\00\90\0f")
 (data (i32.const 4940) "\1c")
 (data (i32.const 4952) "0\00\00\00\0c\00\00\00\a0\12\00\00\00\00\00\00\d0\12")
 (data (i32.const 4972) "\1c")
 (data (i32.const 5004) "\1c")
 (data (i32.const 5016) "0\00\00\00\0c\00\00\00\b0\11\00\00\00\00\00\00\90\0f")
 (data (i32.const 5036) "\1c")
 (data (i32.const 5048) "0\00\00\00\0c\00\00\00\a0\12\00\00\00\00\00\00\d0\12")
 (data (i32.const 5068) ",")
 (data (i32.const 5080) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5116) ",")
 (data (i32.const 5128) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (export "StabilityPoolDB" (global $stability/assembly/stability.contract/StabilityPoolDB))
 (export "StabilityPoolDB#get:db" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:db))
 (export "StabilityPoolDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "StabilityPoolDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:idxdbs))
 (export "StabilityPoolDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "StabilityPoolDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:nextPrimaryKey))
 (export "StabilityPoolDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope))
 (export "StabilityPoolDB#constructor" (func $stability/assembly/stability.contract/StabilityPoolDB#constructor@varargs))
 (export "StabilityPoolDB#set" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#set))
 (export "StabilityPoolDB#store" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#store))
 (export "StabilityPoolDB#update" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#update))
 (export "StabilityPoolDB#remove" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#remove))
 (export "StabilityPoolDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#removeEx))
 (export "StabilityPoolDB#get" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get))
 (export "StabilityPoolDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getByKey))
 (export "StabilityPoolDB#next" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#next))
 (export "StabilityPoolDB#previous" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#previous))
 (export "StabilityPoolDB#find" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find))
 (export "StabilityPoolDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireFind@varargs))
 (export "StabilityPoolDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireNotFind@varargs))
 (export "StabilityPoolDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#lowerBound))
 (export "StabilityPoolDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#upperBound))
 (export "StabilityPoolDB#begin" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#begin))
 (export "StabilityPoolDB#end" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#end))
 (export "StabilityPoolDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getIdxDB))
 (export "StabilityPoolDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#idxUpdate))
 (export "StabilityPoolDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#availablePrimaryKey))
 (export "StabilityPool" (global $stability/assembly/stability.contract/StabilityPool))
 (export "StabilityPool#pack" (func $stability/assembly/stability.contract/StabilityPool#pack))
 (export "StabilityPool#unpack" (func $stability/assembly/stability.contract/StabilityPool#unpack))
 (export "StabilityPool#getSize" (func $stability/assembly/stability.contract/StabilityPool#getSize))
 (export "StabilityPool#getPrimaryValue" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityPool#getSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#getSecondaryValue))
 (export "StabilityPool#setSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#setSecondaryValue))
 (export "StabilityPool#get:market" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityPool#set:market" (func $~lib/as-chain/name/Name#set:N))
 (export "StabilityPool#get:total_deposit" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:nextPrimaryKey))
 (export "StabilityPool#set:total_deposit" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope))
 (export "StabilityPool#get:reward_index" (func $stability/assembly/stability.contract/StabilityPool#get:reward_index))
 (export "StabilityPool#set:reward_index" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table))
 (export "StabilityPool#get:loss_index" (func $stability/assembly/stability.contract/StabilityPool#get:loss_index))
 (export "StabilityPool#set:loss_index" (func $stability/assembly/stability.contract/StabilityPool#set:loss_index))
 (export "StabilityPool#get:last_update" (func $stability/assembly/stability.contract/StabilityPool#get:last_update))
 (export "StabilityPool#set:last_update" (func $stability/assembly/stability.contract/StabilityPool#set:last_update))
 (export "StabilityPool#constructor" (func $stability/assembly/stability.contract/StabilityPool#constructor@varargs))
 (export "StabilityPool#get:primary" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityPool#getTableName" (func $stability/assembly/stability.contract/StabilityPool#getTableName))
 (export "StabilityPool#getTableIndexes" (func $stability/assembly/stability.contract/StabilityPool#getTableIndexes))
 (export "StabilityPool.get:tableName" (func $stability/assembly/stability.contract/StabilityPool.get:tableName))
 (export "StabilityPool.tableIndexes" (func $stability/assembly/stability.contract/StabilityPool.tableIndexes))
 (export "StabilityPool.new" (func $stability/assembly/stability.contract/StabilityPool.new@varargs))
 (export "StabilityDepositDB" (global $stability/assembly/stability.contract/StabilityDepositDB))
 (export "StabilityDepositDB#get:db" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:db))
 (export "StabilityDepositDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "StabilityDepositDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:idxdbs))
 (export "StabilityDepositDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "StabilityDepositDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:nextPrimaryKey))
 (export "StabilityDepositDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope))
 (export "StabilityDepositDB#constructor" (func $stability/assembly/stability.contract/StabilityDepositDB#constructor@varargs))
 (export "StabilityDepositDB#set" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#set))
 (export "StabilityDepositDB#store" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#store))
 (export "StabilityDepositDB#update" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#update))
 (export "StabilityDepositDB#remove" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#remove))
 (export "StabilityDepositDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#removeEx))
 (export "StabilityDepositDB#get" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get))
 (export "StabilityDepositDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#getByKey))
 (export "StabilityDepositDB#next" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#next))
 (export "StabilityDepositDB#previous" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#previous))
 (export "StabilityDepositDB#find" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find))
 (export "StabilityDepositDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireFind@varargs))
 (export "StabilityDepositDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireNotFind@varargs))
 (export "StabilityDepositDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#lowerBound))
 (export "StabilityDepositDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#upperBound))
 (export "StabilityDepositDB#begin" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#begin))
 (export "StabilityDepositDB#end" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end))
 (export "StabilityDepositDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getIdxDB))
 (export "StabilityDepositDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#idxUpdate))
 (export "StabilityDepositDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#availablePrimaryKey))
 (export "StabilityDeposit" (global $stability/assembly/stability.contract/StabilityDeposit))
 (export "StabilityDeposit#pack" (func $stability/assembly/stability.contract/StabilityDeposit#pack))
 (export "StabilityDeposit#unpack" (func $stability/assembly/stability.contract/StabilityDeposit#unpack))
 (export "StabilityDeposit#getSize" (func $stability/assembly/stability.contract/StabilityDeposit#getSize))
 (export "StabilityDeposit#getPrimaryValue" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityDeposit#getSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#getSecondaryValue))
 (export "StabilityDeposit#setSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#setSecondaryValue))
 (export "StabilityDeposit#get:id" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityDeposit#set:id" (func $~lib/as-chain/name/Name#set:N))
 (export "StabilityDeposit#get:owner" (func $stability/assembly/stability.contract/StabilityDeposit#get:owner))
 (export "StabilityDeposit#set:owner" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "StabilityDeposit#get:market" (func $stability/assembly/stability.contract/StabilityPool#get:reward_index))
 (export "StabilityDeposit#set:market" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table))
 (export "StabilityDeposit#get:deposit" (func $stability/assembly/stability.contract/StabilityPool#get:loss_index))
 (export "StabilityDeposit#set:deposit" (func $stability/assembly/stability.contract/StabilityPool#set:loss_index))
 (export "StabilityDeposit#get:reward_snapshot" (func $stability/assembly/stability.contract/StabilityPool#get:last_update))
 (export "StabilityDeposit#set:reward_snapshot" (func $stability/assembly/stability.contract/StabilityPool#set:last_update))
 (export "StabilityDeposit#get:loss_snapshot" (func $stability/assembly/stability.contract/StabilityDeposit#get:loss_snapshot))
 (export "StabilityDeposit#set:loss_snapshot" (func $stability/assembly/stability.contract/StabilityDeposit#set:loss_snapshot))
 (export "StabilityDeposit#constructor" (func $stability/assembly/stability.contract/StabilityDeposit#constructor@varargs))
 (export "StabilityDeposit#get:primary" (func $stability/assembly/stability.contract/StabilityPool#get:primary))
 (export "StabilityDeposit#getTableName" (func $stability/assembly/stability.contract/StabilityDeposit#getTableName))
 (export "StabilityDeposit#getTableIndexes" (func $stability/assembly/stability.contract/StabilityDeposit#getTableIndexes))
 (export "StabilityDeposit.get:tableName" (func $stability/assembly/stability.contract/StabilityDeposit.get:tableName))
 (export "StabilityDeposit.tableIndexes" (func $stability/assembly/stability.contract/StabilityDeposit.tableIndexes))
 (export "StabilityDeposit.new" (func $stability/assembly/stability.contract/StabilityDeposit.new@varargs))
 (export "StabilityConfigDB" (global $stability/assembly/stability.contract/StabilityConfigDB))
 (export "StabilityConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:db))
 (export "StabilityConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "StabilityConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:idxdbs))
 (export "StabilityConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "StabilityConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:nextPrimaryKey))
 (export "StabilityConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope))
 (export "StabilityConfigDB#constructor" (func $stability/assembly/stability.contract/StabilityConfigDB#constructor@varargs))
 (export "StabilityConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#set))
 (export "StabilityConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#store))
 (export "StabilityConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#update))
 (export "StabilityConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#remove))
 (export "StabilityConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#removeEx))
 (export "StabilityConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#get))
 (export "StabilityConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#getByKey))
 (export "StabilityConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#next))
 (export "StabilityConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#previous))
 (export "StabilityConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find))
 (export "StabilityConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#requireFind@varargs))
 (export "StabilityConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#requireNotFind@varargs))
 (export "StabilityConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#lowerBound))
 (export "StabilityConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#upperBound))
 (export "StabilityConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#begin))
 (export "StabilityConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#end))
 (export "StabilityConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getIdxDB))
 (export "StabilityConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#idxUpdate))
 (export "StabilityConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#availablePrimaryKey))
 (export "StabilityConfig" (global $stability/assembly/stability.contract/StabilityConfig))
 (export "StabilityConfig#pack" (func $stability/assembly/stability.contract/StabilityConfig#pack))
 (export "StabilityConfig#unpack" (func $stability/assembly/stability.contract/StabilityConfig#unpack))
 (export "StabilityConfig#getSize" (func $stability/assembly/stability.contract/StabilityConfig#getSize))
 (export "StabilityConfig#getPrimaryValue" (func $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue))
 (export "StabilityConfig#getSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#getSecondaryValue))
 (export "StabilityConfig#setSecondaryValue" (func $stability/assembly/stability.contract/StabilityPool#setSecondaryValue))
 (export "StabilityConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:db))
 (export "StabilityConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "StabilityConfig#get:allowed_token" (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:idxdbs))
 (export "StabilityConfig#set:allowed_token" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "StabilityConfig#get:liquidation_contract" (func $stability/assembly/stability.contract/StabilityDeposit#get:owner))
 (export "StabilityConfig#set:liquidation_contract" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "StabilityConfig#constructor" (func $stability/assembly/stability.contract/StabilityConfig#constructor@varargs))
 (export "StabilityConfig#getTableName" (func $stability/assembly/stability.contract/StabilityConfig#getTableName))
 (export "StabilityConfig#getTableIndexes" (func $stability/assembly/stability.contract/StabilityConfig#getTableIndexes))
 (export "StabilityConfig.get:tableName" (func $stability/assembly/stability.contract/StabilityConfig.get:tableName))
 (export "StabilityConfig.tableIndexes" (func $stability/assembly/stability.contract/StabilityConfig.tableIndexes))
 (export "StabilityConfig.new" (func $stability/assembly/stability.contract/StabilityConfig.new@varargs))
 (export "apply" (func $stability/assembly/stability.contract/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
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
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
 (func $stability/assembly/stability.contract/StabilityPoolDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk (param $0 i32) (result i32)
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
 (func $stability/assembly/stability.contract/StabilityPool#set:loss_index (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#set:last_update (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 40)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:loss_index
   (local.get $0)
   (local.get $4)
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:last_update
   (local.get $0)
   (local.get $5)
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
 (func $stability/assembly/stability.contract/StabilityPool#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:loss_index
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:last_update
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $stability/assembly/stability.contract/StabilityPool#unpack
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityPool#constructor
      (i32.const 0)
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
 (func $stability/assembly/stability.contract/StabilityPool#getSize (param $0 i32) (result i32)
  (i32.const 40)
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
 (func $stability/assembly/stability.contract/StabilityPool#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 40)
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityPool#pack
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
 (func $stability/assembly/stability.contract/StabilityPool#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#update
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
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
       (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $stability/assembly/stability.contract/StabilityPool#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#get
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
  (call $stability/assembly/stability.contract/StabilityPool#constructor
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#remove (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
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
 (func $stability/assembly/stability.contract/StabilityPool#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3184)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $stability/assembly/stability.contract/StabilityPool#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#update
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#end
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
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $stability/assembly/stability.contract/StabilityPool.get:tableName (result i32)
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
   (i64.const -4157813311175393280)
  )
  (local.get $0)
 )
 (func $stability/assembly/stability.contract/StabilityPool.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $stability/assembly/stability.contract/StabilityPool.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3488)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#get:reward_index (param $0 i32) (result i64)
  (i64.load offset=16
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#get:loss_index (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#get:last_update (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#getTableName (param $0 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityPool.get:tableName)
 )
 (func $stability/assembly/stability.contract/StabilityPool#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityPool.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 26)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
       (i32.const 27)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
 (func $stability/assembly/stability.contract/StabilityDepositDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 28)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#set:loss_snapshot (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#constructor (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 48)
       (i32.const 25)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:loss_index
   (local.get $0)
   (local.get $4)
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:last_update
   (local.get $0)
   (local.get $5)
  )
  (call $stability/assembly/stability.contract/StabilityDeposit#set:loss_snapshot
   (local.get $0)
   (local.get $6)
  )
  (local.get $0)
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
 (func $stability/assembly/stability.contract/StabilityDeposit#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:loss_index
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:last_update
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $stability/assembly/stability.contract/StabilityDeposit#set:loss_snapshot
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $stability/assembly/stability.contract/StabilityDeposit#unpack
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityDeposit#constructor
      (i32.const 0)
      (i64.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
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
 (func $stability/assembly/stability.contract/StabilityDeposit#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.const 48)
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
    (i32.const 3520)
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
 (func $stability/assembly/stability.contract/StabilityDeposit#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $stability/assembly/stability.contract/StabilityDeposit#getSize
      (local.get $0)
     )
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
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityDeposit#pack
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#update
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
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
       (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $stability/assembly/stability.contract/StabilityDeposit#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#get
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
  (call $stability/assembly/stability.contract/StabilityDeposit#constructor
   (i32.const 0)
   (i64.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityDeposit>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $stability/assembly/stability.contract/StabilityPool#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityDeposit>#update
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end
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
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $stability/assembly/stability.contract/StabilityDeposit.get:tableName (result i32)
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
   (i64.const -4228129276684664832)
  )
  (local.get $0)
 )
 (func $stability/assembly/stability.contract/StabilityDeposit.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $stability/assembly/stability.contract/StabilityDeposit.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3600)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#get:owner (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#get:loss_snapshot (param $0 i32) (result i64)
  (i64.load offset=40
   (local.get $0)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#getTableName (param $0 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityDeposit.get:tableName)
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityDeposit.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 31)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
       (i32.const 32)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
 (func $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue (param $0 i32) (result i64)
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
   (i64.const -4455971285473689600)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 33)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 30)
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
  (local.get $0)
 )
 (func $stability/assembly/stability.contract/StabilityConfig#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $stability/assembly/stability.contract/StabilityConfig#unpack
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityConfig#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityConfig#getSize (param $0 i32) (result i32)
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
  (i32.const 24)
 )
 (func $stability/assembly/stability.contract/StabilityConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $stability/assembly/stability.contract/StabilityConfig#getSize
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $stability/assembly/stability.contract/StabilityConfig#pack
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
      (local.get $1)
      (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#update
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
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
       (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
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
     (call $stability/assembly/stability.contract/StabilityConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
      (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
       (local.get $1)
      )
      (call $stability/assembly/stability.contract/StabilityPool#getSecondaryValue
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
     (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
      (local.get $0)
      (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#get
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
  (call $stability/assembly/stability.contract/StabilityConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#removeEx
   (local.get $0)
   (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $stability/assembly/stability.contract/StabilityPool#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityConfig>#update
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $stability/assembly/stability.contract/StabilityConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
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
 (func $stability/assembly/stability.contract/StabilityConfig.get:tableName (result i32)
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
   (i64.const -4455971285473689600)
  )
  (local.get $0)
 )
 (func $stability/assembly/stability.contract/StabilityConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $stability/assembly/stability.contract/StabilityConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3632)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 3664)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $stability/assembly/stability.contract/StabilityConfig#getTableName (param $0 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityConfig.get:tableName)
 )
 (func $stability/assembly/stability.contract/StabilityConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $stability/assembly/stability.contract/StabilityConfig.tableIndexes
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<stability/assembly/stability.contract/StabilityConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityConfig>#getValue
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
  (call $stability/assembly/stability.contract/StabilityConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $stability/assembly/stability.contract/initPoolAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 43)
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
     (i32.const 42)
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
 (func $stability/assembly/stability.contract/absorbAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 3856)
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
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
  (if
   (i32.gt_u
    (local.tee $4
     (i32.sub
      (local.get $1)
      (local.get $5)
     )
    )
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (local.get $4)
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
         (local.get $5)
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
     (local.tee $3
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
  (local.set $1
   (i32.sub
    (i32.and
     (i32.add
      (local.get $2)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $2)
    (local.get $3)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $2)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $1)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $1
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $1)
         (local.tee $2
          (i32.shl
           (local.get $3)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $1)
          (local.get $2)
         )
        )
       )
      )
      (local.get $0)
      (local.get $3)
     )
     (local.set $0
      (local.get $1)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $4)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $stability/assembly/stability.contract/onTransferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
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
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 47)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 3984)
    )
    (i32.const 7)
   )
   (i32.const 4016)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (i32.const 3984)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (i32.const 3984)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (i32.const 3984)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 4080)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.get $2)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 46)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (local.set $3
   (i32.const 0)
  )
  (local.set $2
   (i32.const 0)
  )
  (loop $while-continue|0
   (local.set $5
    (i32.load8_u
     (i32.add
      (i32.load offset=4
       (i32.load
        (local.get $1)
       )
      )
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/serializer/Decoder#incPos
    (local.get $1)
    (i32.const 1)
   )
   (local.set $2
    (i32.or
     (local.get $2)
     (i32.shl
      (i32.and
       (local.get $5)
       (i32.const 127)
      )
      (local.get $3)
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 7)
    )
   )
   (local.set $6
    (i32.add
     (local.get $6)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $5)
     (i32.const 128)
    )
   )
  )
  (local.set $3
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $1)
    )
    (i32.load offset=4
     (local.get $1)
    )
    (i32.add
     (local.get $2)
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/string/String.UTF8.decodeUnsafe
    (local.tee $0
     (i32.load
      (local.get $3)
     )
    )
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $0)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $stability/assembly/stability.contract/StabilityContract#onTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (if
   (if (result i32)
    (i64.ne
     (i64.load
      (local.get $2)
     )
     (i64.load
      (i32.load
       (local.get $0)
      )
     )
    )
    (i32.const 1)
    (i64.eq
     (i64.load
      (local.get $1)
     )
     (i64.load
      (i32.load
       (local.get $0)
      )
     )
    )
   )
   (return)
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<stability/assembly/stability.contract/StabilityConfig>#get
    (i32.load offset=20
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=4
      (local.get $0)
     )
    )
    (i64.load
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (i32.const 4144)
  )
  (call $~lib/as-chain/system/check
   (block $__inlined_func$~lib/string/String#startsWith (result i32)
    (local.set $5
     (select
      (i32.const 0)
      (local.tee $4
       (call $~lib/string/String#get:length
        (local.tee $2
         (local.get $4)
        )
       )
      )
      (i32.gt_s
       (local.get $4)
       (i32.const 0)
      )
     )
    )
    (drop
     (br_if $__inlined_func$~lib/string/String#startsWith
      (i32.const 0)
      (i32.lt_s
       (local.get $4)
       (i32.add
        (local.tee $4
         (call $~lib/string/String#get:length
          (i32.const 4208)
         )
        )
        (local.get $5)
       )
      )
     )
    )
    (i32.eqz
     (block $__inlined_func$~lib/util/string/compareImpl (result i32)
      (local.set $6
       (i32.const 4208)
      )
      (local.set $8
       (i32.add
        (local.get $2)
        (i32.shl
         (local.get $5)
         (i32.const 1)
        )
       )
      )
      (loop $while-continue|0
       (local.set $4
        (i32.sub
         (local.tee $5
          (local.get $4)
         )
         (i32.const 1)
        )
       )
       (if
        (local.get $5)
        (block
         (if
          (i32.ne
           (local.tee $5
            (i32.load16_u
             (local.get $6)
            )
           )
           (local.tee $10
            (i32.load16_u
             (local.get $8)
            )
           )
          )
          (br $__inlined_func$~lib/util/string/compareImpl
           (i32.sub
            (local.get $10)
            (local.get $5)
           )
          )
         )
         (local.set $8
          (i32.add
           (local.get $8)
           (i32.const 2)
          )
         )
         (local.set $6
          (i32.add
           (local.get $6)
           (i32.const 2)
          )
         )
         (br $while-continue|0)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (i32.const 4240)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 0)
   )
   (i32.const 4304)
  )
  (block $__inlined_func$~lib/string/String#substring
   (if
    (i32.eqz
     (local.tee $6
      (i32.sub
       (local.tee $8
        (i32.shl
         (select
          (local.tee $5
           (select
            (i32.const 3)
            (local.tee $4
             (call $~lib/string/String#get:length
              (local.get $2)
             )
            )
            (i32.gt_s
             (local.get $4)
             (i32.const 3)
            )
           )
          )
          (local.get $4)
          (i32.lt_s
           (local.get $4)
           (local.get $5)
          )
         )
         (i32.const 1)
        )
       )
       (local.tee $5
        (i32.shl
         (select
          (local.get $5)
          (local.get $4)
          (i32.gt_s
           (local.get $4)
           (local.get $5)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 3984)
     )
     (br $__inlined_func$~lib/string/String#substring)
    )
   )
   (br_if $__inlined_func$~lib/string/String#substring
    (select
     (i32.const 0)
     (i32.eq
      (local.get $8)
      (i32.shl
       (local.get $4)
       (i32.const 1)
      )
     )
     (local.get $5)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $4
     (call $~lib/rt/stub/__new
      (local.get $6)
      (i32.const 1)
     )
    )
    (i32.add
     (local.get $2)
     (local.get $5)
    )
    (local.get $6)
   )
   (local.set $2
    (local.get $4)
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (call $~lib/string/String#get:length
     (local.get $2)
    )
    (i32.const 0)
   )
   (i32.const 4368)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $2)
     )
     (local.get $4)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i32.le_s
        (local.tee $5
         (call $~lib/string/String#charCodeAt
          (local.get $2)
          (local.get $4)
         )
        )
        (i32.const 57)
       )
       (i32.const 0)
       (i32.ge_s
        (local.get $5)
        (i32.const 48)
       )
      )
      (i32.const 4432)
     )
     (local.set $7
      (i64.add
       (i64.extend_i32_s
        (i32.sub
         (local.get $5)
         (i32.const 48)
        )
       )
       (i64.mul
        (local.get $7)
        (i64.const 10)
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
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.tee $4
    (call $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#requireGet
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $7)
    )
   )
   (i64.add
    (i64.load offset=8
     (local.get $4)
    )
    (i64.load
     (local.get $3)
    )
   )
  )
  (call $stability/assembly/stability.contract/StabilityPool#set:last_update
   (local.get $4)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $4)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (i32.load offset=16
    (local.get $0)
   )
  )
  (if
   (i64.eq
    (i64.load offset=8
     (local.tee $2
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#begin
       (i32.load
        (local.get $2)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end
       (i32.load
        (local.get $2)
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
     (local.get $2)
     (i64.const 0)
    )
    (block
     (local.set $6
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#end
       (i32.load
        (local.get $2)
       )
      )
     )
     (local.set $6
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#previous
       (i32.load
        (local.get $2)
       )
       (local.get $6)
      )
     )
     (local.set $11
      (local.tee $9
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#get
         (i32.load
          (local.get $2)
         )
         (local.get $6)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $9)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
       (local.get $2)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
       (local.get $2)
       (i64.add
        (local.get $11)
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
     (local.get $2)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (local.set $1
   (call $stability/assembly/stability.contract/StabilityDeposit#constructor
    (i32.const 0)
    (select
     (i64.const 1)
     (local.tee $9
      (i64.load offset=8
       (local.get $2)
      )
     )
     (i64.eqz
      (local.get $9)
     )
    )
    (local.get $1)
    (local.get $7)
    (i64.load
     (local.get $3)
    )
    (i64.load offset=16
     (local.get $4)
    )
    (i64.load offset=24
     (local.get $4)
    )
   )
  )
  (local.set $0
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireNotFind
    (i32.load
     (local.get $5)
    )
    (local.tee $7
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1200)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#store
    (i32.load
     (local.get $5)
    )
    (local.get $1)
    (local.get $0)
   )
  )
  (if
   (i64.ge_u
    (local.get $7)
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $7)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $7)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $stability/assembly/stability.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
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
        (i32.const 24)
        (i32.const 35)
       )
      )
     )
     (local.set $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 36)
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
     (i32.const 37)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $stability/assembly/stability.contract/StabilityPool#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $stability/assembly/stability.contract/StabilityPool.get:tableName)
    (call $stability/assembly/stability.contract/StabilityPool#getTableIndexes
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
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 38)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $stability/assembly/stability.contract/StabilityDeposit#constructor
    (i32.const 0)
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $stability/assembly/stability.contract/StabilityDeposit.get:tableName)
    (call $stability/assembly/stability.contract/StabilityDeposit#getTableIndexes
     (local.get $7)
     (local.get $5)
     (local.get $5)
    )
   )
  )
  (i32.store offset=16
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
     (i32.const 39)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (i32.const 0)
  )
  (drop
   (call $stability/assembly/stability.contract/StabilityConfig#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (i64.load
    (local.tee $7
     (call $stability/assembly/stability.contract/StabilityConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor@varargs
    (local.get $5)
    (local.get $5)
    (local.get $7)
   )
  )
  (i32.store offset=20
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
         (i32.const 12)
         (i32.const 40)
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
      (drop
       (call $stability/assembly/stability.contract/StabilityConfig#unpack
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
        (local.tee $9
         (i32.load offset=8
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
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<stability/assembly/stability.contract/StabilityConfig>#get
           (i32.load offset=20
            (local.get $4)
           )
          )
         )
        )
       )
       (i32.const 3696)
      )
      (local.set $5
       (i32.load offset=20
        (local.get $4)
       )
      )
      (local.set $6
       (call $stability/assembly/stability.contract/StabilityConfig#constructor
        (i32.const 0)
        (local.get $6)
        (local.get $7)
        (local.get $9)
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
        (local.tee $9
         (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $9)
        (local.get $6)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#store
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
         (i32.const 41)
        )
       )
       (i64.const 0)
      )
      (drop
       (call $stability/assembly/stability.contract/initPoolAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (local.set $8
       (i64.load
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<stability/assembly/stability.contract/StabilityConfig>#get
         (i32.load offset=20
          (local.get $4)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
         (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#find
          (i32.load
           (i32.load offset=12
            (local.get $4)
           )
          )
          (local.get $8)
         )
        )
       )
       (i32.const 3792)
      )
      (local.set $5
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $6
       (call $stability/assembly/stability.contract/StabilityPool#constructor
        (i32.const 0)
        (local.get $8)
        (i64.const 0)
        (i64.const 1000000000000000000)
        (i64.const 1000000000000000000)
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
       (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireNotFind
        (i32.load
         (local.get $5)
        )
        (local.tee $8
         (i64.load
          (local.get $6)
         )
        )
        (i32.const 1200)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#store
        (i32.load
         (local.get $5)
        )
        (local.get $6)
        (local.get $7)
       )
      )
      (if
       (i64.ge_u
        (local.get $8)
        (i64.load offset=8
         (local.get $5)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
        (local.get $5)
        (select
         (i64.const -2)
         (i64.add
          (local.get $8)
          (i64.const 1)
         )
         (i64.ge_u
          (local.get $8)
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
      (i64.const 3598740710632718336)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 24)
         (i32.const 44)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $stability/assembly/stability.contract/absorbAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (local.set $10
       (i64.load
        (local.get $5)
       )
      )
      (local.set $8
       (i64.load offset=8
        (local.get $5)
       )
      )
      (local.set $11
       (i64.load offset=16
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load offset=8
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<stability/assembly/stability.contract/StabilityConfig>#get
         (i32.load offset=20
          (local.get $4)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.ne
        (i64.load offset=8
         (local.tee $5
          (call $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#requireGet
           (i32.load offset=12
            (local.get $4)
           )
           (local.get $10)
          )
         )
        )
        (i64.const 0)
       )
       (i32.const 3920)
      )
      (if
       (i64.ne
        (local.get $8)
        (i64.const 0)
       )
       (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:scope
        (local.get $5)
        (if (result i64)
         (i64.lt_u
          (local.get $8)
          (i64.load offset=8
           (local.get $5)
          )
         )
         (i64.sub
          (i64.load offset=8
           (local.get $5)
          )
          (local.get $8)
         )
         (i64.const 0)
        )
       )
      )
      (if
       (i64.ne
        (local.get $11)
        (i64.const 0)
       )
       (call $~lib/as-chain/dbi64/DBI64<stability/assembly/stability.contract/StabilityPool>#set:table
        (local.get $5)
        (i64.add
         (i64.load offset=16
          (local.get $5)
         )
         (i64.const 1)
        )
       )
      )
      (call $stability/assembly/stability.contract/StabilityPool#set:last_update
       (local.get $5)
       (i64.extend_i32_u
        (call $~lib/as-chain/system/currentTimeSec)
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<stability/assembly/stability.contract/StabilityPool>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $5)
       (i32.load
        (local.get $4)
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.const 16)
        (i32.const 45)
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
      (i32.const 3984)
     )
     (drop
      (call $stability/assembly/stability.contract/onTransferAction#unpack
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
     (if
      (i32.eqz
       (local.tee $6
        (i32.load offset=4
         (local.get $5)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (local.tee $7
        (i32.load offset=8
         (local.get $5)
        )
       )
      )
      (unreachable)
     )
     (call $stability/assembly/stability.contract/StabilityContract#onTransfer
      (local.get $4)
      (local.get $3)
      (local.get $6)
      (local.get $7)
      (i32.load offset=12
       (local.get $5)
      )
     )
    )
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityPoolDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 4496)
    )
   )
  )
  (call $stability/assembly/stability.contract/StabilityPoolDB#constructor
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
    (i32.const 4640)
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
      (i32.const 3984)
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
     (i32.const 3984)
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
      (i32.const 3984)
     )
    )
   )
   (local.set $0
    (i32.const 3984)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 3984)
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
         (i32.const 3984)
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
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4608)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4608)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityPool>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (result i32)
  (block $5of5
   (block $4of5
    (block $3of5
     (block $2of5
      (block $1of5
       (block $0of5
        (block $outOfRange
         (br_table $0of5 $1of5 $2of5 $3of5 $4of5 $5of5 $outOfRange
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
  (call $stability/assembly/stability.contract/StabilityPool#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
  )
 )
 (func $stability/assembly/stability.contract/StabilityPool.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $stability/assembly/stability.contract/StabilityPoolDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $stability/assembly/stability.contract/StabilityPool.get:tableName)
   (call $stability/assembly/stability.contract/StabilityPool.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityDepositDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 4896)
    )
   )
  )
  (call $stability/assembly/stability.contract/StabilityDepositDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4928)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4928)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4960)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4960)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityDeposit>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
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
        (global.get $~lib/as-chain/name/EMPTY_NAME)
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
  (call $stability/assembly/stability.contract/StabilityDeposit#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )
 (func $stability/assembly/stability.contract/StabilityDeposit.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $stability/assembly/stability.contract/StabilityDepositDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $stability/assembly/stability.contract/StabilityDeposit.get:tableName)
   (call $stability/assembly/stability.contract/StabilityDeposit.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $stability/assembly/stability.contract/StabilityConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 4992)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5024)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5024)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5056)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5056)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<stability/assembly/stability.contract/StabilityPool>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#find
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
 (func $stability/assembly/stability.contract/StabilityConfig#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
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
  (call $stability/assembly/stability.contract/StabilityConfig#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $stability/assembly/stability.contract/StabilityConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
   (call $stability/assembly/stability.contract/StabilityConfig.get:tableName)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 34)
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
   (call $~lib/as-chain/mi/MultiIndex<stability/assembly/stability.contract/StabilityConfig>#constructor@varargs
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
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case11
      (block $case10
       (block $case9
        (block $case8
         (block $case6
          (block $case5
           (block $case1
            (if
             (i32.ne
              (local.tee $2
               (i32.load
                (i32.sub
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
              (i32.const 8)
             )
             (block
              (br_if $case1
               (i32.eq
                (local.get $2)
                (i32.const 25)
               )
              )
              (br_if $folding-inner0
               (i32.or
                (i32.eq
                 (local.get $2)
                 (i32.const 30)
                )
                (i32.eq
                 (local.get $2)
                 (i32.const 40)
                )
               )
              )
              (br_if $folding-inner1
               (i32.eq
                (local.get $2)
                (i32.const 41)
               )
              )
              (br_if $case5
               (i32.eq
                (local.get $2)
                (i32.const 45)
               )
              )
              (br_if $case6
               (i32.eq
                (local.get $2)
                (i32.const 44)
               )
              )
              (br_if $folding-inner1
               (i32.eq
                (local.get $2)
                (i32.const 43)
               )
              )
              (br_if $case8
               (i32.eq
                (local.get $2)
                (i32.const 42)
               )
              )
              (br_if $case9
               (i32.eq
                (local.get $2)
                (i32.const 5)
               )
              )
              (br_if $case10
               (i32.eq
                (local.get $2)
                (i32.const 47)
               )
              )
              (br_if $case11
               (i32.eq
                (local.get $2)
                (i32.const 46)
               )
              )
              (br $default)
             )
            )
            (return
             (call $stability/assembly/stability.contract/StabilityPool#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (return
            (call $stability/assembly/stability.contract/StabilityDeposit#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (return
           (call $stability/assembly/stability.contract/onTransferAction#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $stability/assembly/stability.contract/absorbAction#unpack
           (local.get $0)
           (local.get $1)
          )
         )
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
        (return
         (i32.load offset=4
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
       (i32.const 5088)
      )
      (return
       (i32.load offset=4
        (local.get $1)
       )
      )
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
      (i32.const 5136)
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
    (call $stability/assembly/stability.contract/StabilityConfig#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (call $stability/assembly/stability.contract/initPoolAction#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $stability/assembly/stability.contract/onTransferAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (i32.load
     (local.tee $1
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $1)
    )
   )
   (unreachable)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $3
     (call $~lib/string/String.UTF8.encode
      (i32.load offset=12
       (local.get $1)
      )
      (i32.const 0)
     )
    )
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (loop $while-continue|0
   (local.set $0
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $2
     (i32.shr_u
      (local.get $2)
      (i32.const 7)
     )
    )
   )
  )
  (local.set $0
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.add
     (i32.add
      (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
       (local.get $3)
      )
      (local.get $0)
     )
     (i32.const 32)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $0)
   (local.get $2)
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $0)
   (local.get $2)
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=8
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $0)
   (local.get $2)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (i32.load offset=12
       (local.get $1)
      )
      (i32.const 0)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $while-continue|00
   (local.set $4
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
     (local.get $4)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (select
     (i32.or
      (local.tee $4
       (i32.and
        (local.get $2)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $4)
     (local.tee $2
      (i32.shr_u
       (local.get $2)
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
   (br_if $while-continue|00
    (local.get $2)
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case11
      (block $case9
       (block $case8
        (block $case7
         (block $case6
          (block $case5
           (block $case3
            (block $case2
             (block $case1
              (if
               (i32.ne
                (local.tee $1
                 (i32.load
                  (i32.sub
                   (local.get $0)
                   (i32.const 8)
                  )
                 )
                )
                (i32.const 8)
               )
               (block
                (br_if $case1
                 (i32.eq
                  (local.get $1)
                  (i32.const 25)
                 )
                )
                (br_if $case2
                 (i32.eq
                  (local.get $1)
                  (i32.const 30)
                 )
                )
                (br_if $case3
                 (i32.eq
                  (local.get $1)
                  (i32.const 40)
                 )
                )
                (br_if $folding-inner0
                 (i32.eq
                  (local.get $1)
                  (i32.const 41)
                 )
                )
                (br_if $case5
                 (i32.eq
                  (local.get $1)
                  (i32.const 45)
                 )
                )
                (br_if $case6
                 (i32.eq
                  (local.get $1)
                  (i32.const 44)
                 )
                )
                (br_if $case7
                 (i32.eq
                  (local.get $1)
                  (i32.const 43)
                 )
                )
                (br_if $case8
                 (i32.eq
                  (local.get $1)
                  (i32.const 42)
                 )
                )
                (br_if $case9
                 (i32.eq
                  (local.get $1)
                  (i32.const 5)
                 )
                )
                (br_if $folding-inner0
                 (i32.eq
                  (local.get $1)
                  (i32.const 47)
                 )
                )
                (br_if $case11
                 (i32.eq
                  (local.get $1)
                  (i32.const 46)
                 )
                )
                (br $default)
               )
              )
              (return
               (call $stability/assembly/stability.contract/StabilityPool#pack
                (local.get $0)
               )
              )
             )
             (return
              (call $stability/assembly/stability.contract/StabilityDeposit#pack
               (local.get $0)
              )
             )
            )
            (return
             (call $stability/assembly/stability.contract/StabilityConfig#pack
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
           (local.set $1
            (call $~lib/as-chain/serializer/Encoder#constructor
             (i32.const 24)
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
             (local.tee $0
              (i32.load offset=8
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
           (br $folding-inner1)
          )
          (return
           (call $stability/assembly/stability.contract/onTransferAction#pack
            (local.get $0)
           )
          )
         )
         (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
          (local.tee $1
           (call $~lib/as-chain/serializer/Encoder#constructor
            (i32.const 24)
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
         (br $folding-inner1)
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
   (i32.const 5164)
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
