(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i64_i32_i64_i64_i64_i64_i32_i32_i64_i64_=>_i32 (func (param i32 i64 i32 i64 i64 i64 i64 i32 i32 i64 i64) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_i64_i32_i32_=>_none (func (param i32 i32 i64 i64 i32 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_upperbound_i64" (func $~lib/as-chain/env/db_upperbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $position/assembly/position.contract/PositionDB i32 (i32.const 7))
 (global $position/assembly/position.contract/Position i32 (i32.const 8))
 (global $position/assembly/position.contract/CollateralPoolDB i32 (i32.const 24))
 (global $position/assembly/position.contract/CollateralPool i32 (i32.const 25))
 (global $position/assembly/position.contract/PositionConfigDB i32 (i32.const 29))
 (global $position/assembly/position.contract/PositionConfig i32 (i32.const 30))
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
 (data (i32.const 3164) "L")
 (data (i32.const 3176) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3244) "<")
 (data (i32.const 3256) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3308) "L")
 (data (i32.const 3320) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3388) "<")
 (data (i32.const 3400) "\01\00\00\00,\00\00\00g\00e\00t\00I\00d\00x\00D\00B\00:\00 \00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3452) "\\")
 (data (i32.const 3464) "\01\00\00\00J\00\00\00i\00d\00x\00U\00p\00d\00a\00t\00e\00:\00 \00v\00a\00l\00u\00e\00 \00b\00y\00 \00p\00r\00i\00m\00a\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 3548) "\1c")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3644) "\1c")
 (data (i32.const 3676) "\\")
 (data (i32.const 3688) "\01\00\00\00@\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00o\00s\00i\00t\00i\00o\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3772) "<")
 (data (i32.const 3784) "\01\00\00\00,\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00r\00a\00t\00e\00 \00b\00u\00c\00k\00e\00t")
 (data (i32.const 3836) "<")
 (data (i32.const 3848) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00a\00r\00k\00e\00t")
 (data (i32.const 3900) "<")
 (data (i32.const 3912) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 3964) "<")
 (data (i32.const 3976) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 4028) "\1c")
 (data (i32.const 4040) "\01")
 (data (i32.const 4060) "<")
 (data (i32.const 4072) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00a\00m\00o\00u\00n\00t")
 (data (i32.const 4124) "<")
 (data (i32.const 4136) "\01\00\00\00&\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00o\00s\00i\00t\00i\00o\00n")
 (data (i32.const 4188) "L")
 (data (i32.const 4200) "\01\00\00\00.\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00o\00w\00n\00e\00r\00/\00s\00t\00a\00t\00u\00s")
 (data (i32.const 4268) "<")
 (data (i32.const 4280) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00c\00o\00l\00l\00a\00t\00e\00r\00a\00l")
 (data (i32.const 4332) "L")
 (data (i32.const 4344) "\01\00\00\006\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00r\00e\00p\00a\00y\00 \00d\00e\00b\00t\00 \00f\00i\00r\00s\00t")
 (data (i32.const 4412) "<")
 (data (i32.const 4424) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00c\00o\00l\00l\00 \00p\00o\00o\00l")
 (data (i32.const 4476) "<")
 (data (i32.const 4488) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00o\00o\00l")
 (data (i32.const 4540) "<")
 (data (i32.const 4552) "\01\00\00\00$\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00 \00w\00i\00t\00h\00d\00r\00a\00w")
 (data (i32.const 4604) ",")
 (data (i32.const 4616) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 4652) "\1c")
 (data (i32.const 4664) "1\00\00\00\0c\00\00\00\10\12\00\00\00\00\00\00\d0\0f")
 (data (i32.const 4684) ",")
 (data (i32.const 4696) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 4732) "\1c")
 (data (i32.const 4744) "1\00\00\00\0c\00\00\00`\12\00\00\00\00\00\00\d0\0f")
 (data (i32.const 4764) ",")
 (data (i32.const 4776) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4812) "\1c")
 (data (i32.const 4824) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 4844) "<")
 (data (i32.const 4856) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00n\00o\00t\00 \00o\00w\00n\00e\00r")
 (data (i32.const 4908) "<")
 (data (i32.const 4920) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00n\00o\00t\00 \00e\00m\00p\00t\00y")
 (data (i32.const 4972) "<")
 (data (i32.const 4984) "\01\00\00\00(\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00b\00a\00d\00 \00t\00o\00k\00e\00n")
 (data (i32.const 5036) ",")
 (data (i32.const 5048) "\01\00\00\00\10\00\00\00d\00e\00p\00o\00s\00i\00t\00:")
 (data (i32.const 5084) "<")
 (data (i32.const 5096) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00e\00m\00o")
 (data (i32.const 5148) "<")
 (data (i32.const 5160) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00p\00a\00r\00s\00e")
 (data (i32.const 5212) "<")
 (data (i32.const 5224) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00d\00i\00g\00i\00t")
 (data (i32.const 5276) "\1c")
 (data (i32.const 5308) "L")
 (data (i32.const 5320) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 5388) "\1c")
 (data (i32.const 5400) "1\00\00\00\0c\00\00\00\d0\14\00\00\00\00\00\00\d0\0f")
 (data (i32.const 5420) "\1c")
 (data (i32.const 5432) "\01\00\00\00\02\00\00\000")
 (data (i32.const 5452) "\\")
 (data (i32.const 5464) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5548) ",")
 (data (i32.const 5560) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 5596) ",")
 (data (i32.const 5608) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 5644) "\1c")
 (data (i32.const 5656) "1\00\00\00\0c\00\00\00\c0\15\00\00\00\00\00\00\f0\15")
 (data (i32.const 5676) "\1c")
 (data (i32.const 5708) "\1c")
 (data (i32.const 5720) "1\00\00\00\0c\00\00\00\d0\14\00\00\00\00\00\00\d0\0f")
 (data (i32.const 5740) "\1c")
 (data (i32.const 5752) "1\00\00\00\0c\00\00\00\c0\15\00\00\00\00\00\00\f0\15")
 (data (i32.const 5772) "\1c")
 (data (i32.const 5804) "\1c")
 (data (i32.const 5816) "1\00\00\00\0c\00\00\00\d0\14\00\00\00\00\00\00\d0\0f")
 (data (i32.const 5836) "\1c")
 (data (i32.const 5848) "1\00\00\00\0c\00\00\00\c0\15\00\00\00\00\00\00\f0\15")
 (data (i32.const 5868) ",")
 (data (i32.const 5880) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5916) ",")
 (data (i32.const 5928) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "PositionDB" (global $position/assembly/position.contract/PositionDB))
 (export "PositionDB#get:db" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:db))
 (export "PositionDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "PositionDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:idxdbs))
 (export "PositionDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "PositionDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:nextPrimaryKey))
 (export "PositionDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope))
 (export "PositionDB#constructor" (func $position/assembly/position.contract/PositionDB#constructor@varargs))
 (export "PositionDB#set" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#set))
 (export "PositionDB#store" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#store))
 (export "PositionDB#update" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#update))
 (export "PositionDB#remove" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#remove))
 (export "PositionDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#removeEx))
 (export "PositionDB#get" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get))
 (export "PositionDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getByKey))
 (export "PositionDB#next" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#next))
 (export "PositionDB#previous" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#previous))
 (export "PositionDB#find" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find))
 (export "PositionDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireFind@varargs))
 (export "PositionDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireNotFind@varargs))
 (export "PositionDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#lowerBound))
 (export "PositionDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#upperBound))
 (export "PositionDB#begin" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#begin))
 (export "PositionDB#end" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end))
 (export "PositionDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getIdxDB))
 (export "PositionDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#idxUpdate))
 (export "PositionDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#availablePrimaryKey))
 (export "Position" (global $position/assembly/position.contract/Position))
 (export "Position#pack" (func $position/assembly/position.contract/Position#pack))
 (export "Position#unpack" (func $position/assembly/position.contract/Position#unpack))
 (export "Position#getSize" (func $position/assembly/position.contract/Position#getSize))
 (export "Position#getPrimaryValue" (func $position/assembly/position.contract/Position#get:primary))
 (export "Position#getSecondaryValue" (func $position/assembly/position.contract/Position#getSecondaryValue))
 (export "Position#setSecondaryValue" (func $position/assembly/position.contract/Position#setSecondaryValue))
 (export "Position#get:position_id" (func $position/assembly/position.contract/Position#get:primary))
 (export "Position#set:position_id" (func $~lib/as-chain/name/Name#set:N))
 (export "Position#get:owner" (func $position/assembly/position.contract/Position#get:owner))
 (export "Position#set:owner" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "Position#get:market" (func $position/assembly/position.contract/Position#get:market))
 (export "Position#set:market" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table))
 (export "Position#get:collateral" (func $position/assembly/position.contract/Position#get:collateral))
 (export "Position#set:collateral" (func $position/assembly/position.contract/Position#set:collateral))
 (export "Position#get:debt" (func $position/assembly/position.contract/Position#get:debt))
 (export "Position#set:debt" (func $position/assembly/position.contract/Position#set:debt))
 (export "Position#get:interest_index" (func $position/assembly/position.contract/Position#get:interest_index))
 (export "Position#set:interest_index" (func $position/assembly/position.contract/Position#set:interest_index))
 (export "Position#get:chosen_rate" (func $position/assembly/position.contract/Position#get:chosen_rate))
 (export "Position#set:chosen_rate" (func $position/assembly/position.contract/Position#set:chosen_rate))
 (export "Position#get:status" (func $position/assembly/position.contract/Position#get:status))
 (export "Position#set:status" (func $position/assembly/position.contract/Position#set:status))
 (export "Position#get:last_update" (func $position/assembly/position.contract/Position#get:last_update))
 (export "Position#set:last_update" (func $position/assembly/position.contract/Position#set:last_update))
 (export "Position#get:bucket_seq" (func $position/assembly/position.contract/Position#get:bucket_seq))
 (export "Position#set:bucket_seq" (func $position/assembly/position.contract/Position#set:bucket_seq))
 (export "Position#constructor" (func $position/assembly/position.contract/Position#constructor@varargs))
 (export "Position#get:primary" (func $position/assembly/position.contract/Position#get:primary))
 (export "Position#getTableName" (func $position/assembly/position.contract/Position#getTableName))
 (export "Position#getTableIndexes" (func $position/assembly/position.contract/Position#getTableIndexes))
 (export "Position.get:tableName" (func $position/assembly/position.contract/Position.get:tableName))
 (export "Position.tableIndexes" (func $position/assembly/position.contract/Position.tableIndexes))
 (export "Position.new" (func $position/assembly/position.contract/Position.new@varargs))
 (export "CollateralPoolDB" (global $position/assembly/position.contract/CollateralPoolDB))
 (export "CollateralPoolDB#get:db" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:db))
 (export "CollateralPoolDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "CollateralPoolDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:idxdbs))
 (export "CollateralPoolDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "CollateralPoolDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:nextPrimaryKey))
 (export "CollateralPoolDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope))
 (export "CollateralPoolDB#constructor" (func $position/assembly/position.contract/CollateralPoolDB#constructor@varargs))
 (export "CollateralPoolDB#set" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#set))
 (export "CollateralPoolDB#store" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#store))
 (export "CollateralPoolDB#update" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#update))
 (export "CollateralPoolDB#remove" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#remove))
 (export "CollateralPoolDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#removeEx))
 (export "CollateralPoolDB#get" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get))
 (export "CollateralPoolDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#getByKey))
 (export "CollateralPoolDB#next" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#next))
 (export "CollateralPoolDB#previous" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#previous))
 (export "CollateralPoolDB#find" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find))
 (export "CollateralPoolDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireFind@varargs))
 (export "CollateralPoolDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireNotFind@varargs))
 (export "CollateralPoolDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#lowerBound))
 (export "CollateralPoolDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#upperBound))
 (export "CollateralPoolDB#begin" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#begin))
 (export "CollateralPoolDB#end" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#end))
 (export "CollateralPoolDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getIdxDB))
 (export "CollateralPoolDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#idxUpdate))
 (export "CollateralPoolDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#availablePrimaryKey))
 (export "CollateralPool" (global $position/assembly/position.contract/CollateralPool))
 (export "CollateralPool#pack" (func $position/assembly/position.contract/CollateralPool#pack))
 (export "CollateralPool#unpack" (func $position/assembly/position.contract/CollateralPool#unpack))
 (export "CollateralPool#getSize" (func $position/assembly/position.contract/CollateralPool#getSize))
 (export "CollateralPool#getPrimaryValue" (func $position/assembly/position.contract/Position#get:primary))
 (export "CollateralPool#getSecondaryValue" (func $position/assembly/position.contract/Position#getSecondaryValue))
 (export "CollateralPool#setSecondaryValue" (func $position/assembly/position.contract/Position#setSecondaryValue))
 (export "CollateralPool#get:market" (func $position/assembly/position.contract/Position#get:primary))
 (export "CollateralPool#set:market" (func $~lib/as-chain/name/Name#set:N))
 (export "CollateralPool#get:total_collateral" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:nextPrimaryKey))
 (export "CollateralPool#set:total_collateral" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope))
 (export "CollateralPool#get:reserved_collateral" (func $position/assembly/position.contract/Position#get:market))
 (export "CollateralPool#set:reserved_collateral" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table))
 (export "CollateralPool#get:liquidating_collateral" (func $position/assembly/position.contract/Position#get:collateral))
 (export "CollateralPool#set:liquidating_collateral" (func $position/assembly/position.contract/Position#set:collateral))
 (export "CollateralPool#get:fees_collected" (func $position/assembly/position.contract/Position#get:debt))
 (export "CollateralPool#set:fees_collected" (func $position/assembly/position.contract/Position#set:debt))
 (export "CollateralPool#constructor" (func $position/assembly/position.contract/CollateralPool#constructor@varargs))
 (export "CollateralPool#get:primary" (func $position/assembly/position.contract/Position#get:primary))
 (export "CollateralPool#getTableName" (func $position/assembly/position.contract/CollateralPool#getTableName))
 (export "CollateralPool#getTableIndexes" (func $position/assembly/position.contract/CollateralPool#getTableIndexes))
 (export "CollateralPool.get:tableName" (func $position/assembly/position.contract/CollateralPool.get:tableName))
 (export "CollateralPool.tableIndexes" (func $position/assembly/position.contract/CollateralPool.tableIndexes))
 (export "CollateralPool.new" (func $position/assembly/position.contract/CollateralPool.new@varargs))
 (export "PositionConfigDB" (global $position/assembly/position.contract/PositionConfigDB))
 (export "PositionConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:db))
 (export "PositionConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "PositionConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:idxdbs))
 (export "PositionConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "PositionConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:nextPrimaryKey))
 (export "PositionConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope))
 (export "PositionConfigDB#constructor" (func $position/assembly/position.contract/PositionConfigDB#constructor@varargs))
 (export "PositionConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#set))
 (export "PositionConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#store))
 (export "PositionConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#update))
 (export "PositionConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#remove))
 (export "PositionConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#removeEx))
 (export "PositionConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#get))
 (export "PositionConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#getByKey))
 (export "PositionConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#next))
 (export "PositionConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#previous))
 (export "PositionConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find))
 (export "PositionConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#requireFind@varargs))
 (export "PositionConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#requireNotFind@varargs))
 (export "PositionConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#lowerBound))
 (export "PositionConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#upperBound))
 (export "PositionConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#begin))
 (export "PositionConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#end))
 (export "PositionConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getIdxDB))
 (export "PositionConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#idxUpdate))
 (export "PositionConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#availablePrimaryKey))
 (export "PositionConfig" (global $position/assembly/position.contract/PositionConfig))
 (export "PositionConfig#pack" (func $position/assembly/position.contract/PositionConfig#pack))
 (export "PositionConfig#unpack" (func $position/assembly/position.contract/PositionConfig#unpack))
 (export "PositionConfig#getSize" (func $position/assembly/position.contract/PositionConfig#getSize))
 (export "PositionConfig#getPrimaryValue" (func $position/assembly/position.contract/PositionConfig#getPrimaryValue))
 (export "PositionConfig#getSecondaryValue" (func $position/assembly/position.contract/Position#getSecondaryValue))
 (export "PositionConfig#setSecondaryValue" (func $position/assembly/position.contract/Position#setSecondaryValue))
 (export "PositionConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:db))
 (export "PositionConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "PositionConfig#get:market_contract" (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:idxdbs))
 (export "PositionConfig#set:market_contract" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "PositionConfig#get:debt_contract" (func $position/assembly/position.contract/Position#get:owner))
 (export "PositionConfig#set:debt_contract" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "PositionConfig#get:allowed_token" (func $position/assembly/position.contract/PositionConfig#get:allowed_token))
 (export "PositionConfig#set:allowed_token" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "PositionConfig#constructor" (func $position/assembly/position.contract/PositionConfig#constructor@varargs))
 (export "PositionConfig#getTableName" (func $position/assembly/position.contract/PositionConfig#getTableName))
 (export "PositionConfig#getTableIndexes" (func $position/assembly/position.contract/PositionConfig#getTableIndexes))
 (export "PositionConfig.get:tableName" (func $position/assembly/position.contract/PositionConfig.get:tableName))
 (export "PositionConfig.tableIndexes" (func $position/assembly/position.contract/PositionConfig.tableIndexes))
 (export "PositionConfig.new" (func $position/assembly/position.contract/PositionConfig.new@varargs))
 (export "apply" (func $position/assembly/position.contract/apply))
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
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
 (func $position/assembly/position.contract/PositionDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk (param $0 i32) (result i32)
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
 (func $position/assembly/position.contract/Position#set:collateral (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:debt (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:interest_index (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:chosen_rate (param $0 i32) (param $1 i32)
  (i32.store16 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:status (param $0 i32) (param $1 i32)
  (i32.store8 offset=50
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:last_update (param $0 i32) (param $1 i64)
  (i64.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#set:bucket_seq (param $0 i32) (param $1 i64)
  (i64.store offset=64
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#constructor (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i32) (param $8 i32) (param $9 i64) (param $10 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 72)
       (i32.const 8)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $0)
   (local.get $4)
  )
  (call $position/assembly/position.contract/Position#set:debt
   (local.get $0)
   (local.get $5)
  )
  (call $position/assembly/position.contract/Position#set:interest_index
   (local.get $0)
   (local.get $6)
  )
  (call $position/assembly/position.contract/Position#set:chosen_rate
   (local.get $0)
   (local.get $7)
  )
  (call $position/assembly/position.contract/Position#set:status
   (local.get $0)
   (local.get $8)
  )
  (call $position/assembly/position.contract/Position#set:last_update
   (local.get $0)
   (local.get $9)
  )
  (call $position/assembly/position.contract/Position#set:bucket_seq
   (local.get $0)
   (local.get $10)
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
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u16> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load16_u
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
   (i32.const 2)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u8> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
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
  (local.get $1)
 )
 (func $position/assembly/position.contract/Position#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:debt
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:interest_index
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:chosen_rate
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:last_update
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:bucket_seq
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $position/assembly/position.contract/Position#unpack
    (local.tee $0
     (call $position/assembly/position.contract/Position#constructor
      (i32.const 0)
      (i64.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i32.const 0)
      (i32.const 0)
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
     (i32.const 19)
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
 (func $position/assembly/position.contract/Position#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.const 67)
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
    (i32.const 3184)
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
 (func $~lib/as-chain/serializer/Encoder#packNumber<u16> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 2)
  )
  (i32.store16
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
 (func $~lib/as-chain/serializer/Encoder#packNumber<u8> (param $0 i32) (param $1 i32)
  (local $2 i32)
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
   (local.get $1)
  )
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
 (func $position/assembly/position.contract/Position#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $position/assembly/position.contract/Position#getSize
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=50
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=64
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $position/assembly/position.contract/Position#pack
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
 (func $position/assembly/position.contract/Position#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3264)
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#update
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
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
       (call $position/assembly/position.contract/Position#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $position/assembly/position.contract/Position#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#get
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
  (call $position/assembly/position.contract/Position#constructor
   (i32.const 0)
   (i64.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i32.const 0)
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#remove (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3328)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 3408)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/Position#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3264)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3472)
  )
  (call $position/assembly/position.contract/Position#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#update
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end
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
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $position/assembly/position.contract/Position.get:tableName (result i32)
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
   (i64.const -5967009220179001344)
  )
  (local.get $0)
 )
 (func $position/assembly/position.contract/Position.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $position/assembly/position.contract/Position.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3568)
  )
 )
 (func $position/assembly/position.contract/Position#get:owner (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:market (param $0 i32) (result i64)
  (i64.load offset=16
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:collateral (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:debt (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:interest_index (param $0 i32) (result i64)
  (i64.load offset=40
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:chosen_rate (param $0 i32) (result i32)
  (i32.load16_u offset=48
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:status (param $0 i32) (result i32)
  (i32.load8_u offset=50
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:last_update (param $0 i32) (result i64)
  (i64.load offset=56
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#get:bucket_seq (param $0 i32) (result i64)
  (i64.load offset=64
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/Position#getTableName (param $0 i32) (result i32)
  (call $position/assembly/position.contract/Position.get:tableName)
 )
 (func $position/assembly/position.contract/Position#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $position/assembly/position.contract/Position.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
 (func $position/assembly/position.contract/CollateralPoolDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $position/assembly/position.contract/CollateralPool#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 40)
       (i32.const 25)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $0)
   (local.get $4)
  )
  (call $position/assembly/position.contract/Position#set:debt
   (local.get $0)
   (local.get $5)
  )
  (local.get $0)
 )
 (func $position/assembly/position.contract/CollateralPool#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/Position#set:debt
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $position/assembly/position.contract/CollateralPool#unpack
    (local.tee $0
     (call $position/assembly/position.contract/CollateralPool#constructor
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
 (func $position/assembly/position.contract/CollateralPool#getSize (param $0 i32) (result i32)
  (i32.const 40)
 )
 (func $position/assembly/position.contract/CollateralPool#pack (param $0 i32) (result i32)
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
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $position/assembly/position.contract/CollateralPool#pack
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#update
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
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
       (call $position/assembly/position.contract/Position#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $position/assembly/position.contract/CollateralPool#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#get
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
  (call $position/assembly/position.contract/CollateralPool#constructor
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3328)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/CollateralPool>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3472)
  )
  (call $position/assembly/position.contract/Position#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/CollateralPool>#update
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#end
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
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $position/assembly/position.contract/CollateralPool.get:tableName (result i32)
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
   (i64.const 4981855104480051200)
  )
  (local.get $0)
 )
 (func $position/assembly/position.contract/CollateralPool.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $position/assembly/position.contract/CollateralPool.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3600)
  )
 )
 (func $position/assembly/position.contract/CollateralPool#getTableName (param $0 i32) (result i32)
  (call $position/assembly/position.contract/CollateralPool.get:tableName)
 )
 (func $position/assembly/position.contract/CollateralPool#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $position/assembly/position.contract/CollateralPool.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
 (func $position/assembly/position.contract/PositionConfig#getPrimaryValue (param $0 i32) (result i64)
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
   (i64.const -6185353542383960064)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $position/assembly/position.contract/PositionConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $position/assembly/position.contract/PositionConfig#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $position/assembly/position.contract/PositionConfig#unpack
    (local.tee $0
     (call $position/assembly/position.contract/PositionConfig#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $position/assembly/position.contract/PositionConfig#getSize (param $0 i32) (result i32)
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
 (func $position/assembly/position.contract/PositionConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $position/assembly/position.contract/PositionConfig#getSize
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
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $position/assembly/position.contract/PositionConfig#pack
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
      (local.get $1)
      (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#update
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
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
       (call $position/assembly/position.contract/Position#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
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
     (call $position/assembly/position.contract/PositionConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
      (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
       (local.get $1)
      )
      (call $position/assembly/position.contract/Position#getSecondaryValue
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
     (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
      (local.get $0)
      (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#get
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
  (call $position/assembly/position.contract/PositionConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3328)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#removeEx
   (local.get $0)
   (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3472)
  )
  (call $position/assembly/position.contract/Position#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/PositionConfig>#update
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $position/assembly/position.contract/PositionConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
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
 (func $position/assembly/position.contract/PositionConfig.get:tableName (result i32)
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
   (i64.const -6185353542383960064)
  )
  (local.get $0)
 )
 (func $position/assembly/position.contract/PositionConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $position/assembly/position.contract/PositionConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3632)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $position/assembly/position.contract/PositionConfig#get:allowed_token (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $position/assembly/position.contract/PositionConfig#getTableName (param $0 i32) (result i32)
  (call $position/assembly/position.contract/PositionConfig.get:tableName)
 )
 (func $position/assembly/position.contract/PositionConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $position/assembly/position.contract/PositionConfig.tableIndexes
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<position/assembly/position.contract/PositionConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/PositionConfig>#getValue
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
  (call $position/assembly/position.contract/PositionConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $position/assembly/position.contract/openPositionAction#set:chosen_rate (param $0 i32) (param $1 i32)
  (i32.store16 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/openPositionAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $position/assembly/position.contract/openPositionAction#set:chosen_rate
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
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
 (func $position/assembly/position.contract/PositionContract#openPosition (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (select
    (i32.const 1)
    (i32.eq
     (local.tee $4
      (i32.and
       (local.get $3)
       (i32.const 65535)
      )
     )
     (i32.const 1000)
    )
    (select
     (i32.const 1)
     (i32.eq
      (local.get $4)
      (i32.const 600)
     )
     (select
      (i32.const 1)
      (i32.eq
       (local.get $4)
       (i32.const 400)
      )
      (select
       (i32.const 1)
       (i32.eq
        (local.get $4)
        (i32.const 200)
       )
       (select
        (i32.const 1)
        (i32.eq
         (local.get $4)
         (i32.const 100)
        )
        (i32.eq
         (local.get $4)
         (i32.const 50)
        )
       )
      )
     )
    )
   )
   (i32.const 3792)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.get $2)
    (i64.const 0)
   )
   (i32.const 3856)
  )
  (if
   (i64.eq
    (i64.load offset=8
     (local.tee $4
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#begin
       (i32.load
        (local.get $4)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end
       (i32.load
        (local.get $4)
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $4)
     (i64.const 0)
    )
    (block
     (local.set $5
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#end
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#previous
       (i32.load
        (local.get $4)
       )
       (local.get $5)
      )
     )
     (local.set $7
      (local.tee $6
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get
         (i32.load
          (local.get $4)
         )
         (local.get $5)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $6)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $4)
       (i64.add
        (local.get $7)
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
     (local.get $4)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (call $position/assembly/position.contract/Position#constructor
    (i32.const 0)
    (select
     (i64.const 1)
     (local.tee $6
      (i64.load offset=8
       (local.get $4)
      )
     )
     (i64.eqz
      (local.get $6)
     )
    )
    (local.get $1)
    (local.get $2)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (local.get $3)
    (i32.const 0)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
    (i64.const 0)
   )
  )
  (local.set $0
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireNotFind
    (i32.load
     (local.get $5)
    )
    (local.tee $2
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1200)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#store
    (i32.load
     (local.get $5)
    )
    (local.get $1)
    (local.get $0)
   )
  )
  (if
   (i64.ge_u
    (local.get $2)
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $2)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $2)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $position/assembly/position.contract/withdrawAction#set:token (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $position/assembly/position.contract/withdrawAction#set:quantity (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
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
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 46)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/system/check
    (i32.le_s
     (call $~lib/string/String#get:length
      (i32.const 4048)
     )
     (i32.const 7)
    )
    (i32.const 3920)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
   (loop $for-loop|0
    (if
     (i32.gt_s
      (call $~lib/string/String#get:length
       (i32.const 4048)
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
            (i32.const 4048)
            (i32.sub
             (i32.sub
              (call $~lib/string/String#get:length
               (i32.const 4048)
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
       (i32.const 3984)
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
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 45)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $position/assembly/position.contract/withdrawAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
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
  (call $position/assembly/position.contract/withdrawAction#set:token
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
  (call $position/assembly/position.contract/withdrawAction#set:quantity
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 4144)
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/CollateralPool>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
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
      (i32.const 4048)
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
     (i32.const 4048)
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
      (i32.const 4048)
     )
    )
   )
   (local.set $0
    (i32.const 4048)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 4048)
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
         (i32.const 4048)
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
   (i32.const 4672)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4672)
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
          (i32.const 4752)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 4752)
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
     (i32.const 50)
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
   (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
    (local.get $0)
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
 (func $shared/inline/TransferAction#pack (param $0 i32) (result i32)
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
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
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
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
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
 (func $shared/inline/sendTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (local.set $6
   (call $~lib/as-chain/name/S2N
    (i32.const 4784)
   )
  )
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
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $5)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $6
   (call $~lib/as-chain/name/S2N
    (i32.const 4832)
   )
  )
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
   (local.get $6)
  )
  (local.set $5
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $1)
    (local.get $5)
   )
  )
  (local.set $7
   (i32.load
    (local.get $4)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 51)
    )
   )
   (local.get $7)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 47)
    )
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
   (i32.const 4560)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 52)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $4)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $4)
   )
  )
  (local.set $3
   (i32.load
    (local.get $4)
   )
  )
  (local.set $4
   (call $shared/inline/TransferAction#pack
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 53)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
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
 (func $position/assembly/position.contract/PositionContract#withdraw (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.ne
     (local.get $3)
     (i64.const 0)
    )
    (i64.eq
     (local.get $3)
     (i64.load
      (local.get $5)
     )
    )
    (i32.const 0)
   )
   (i32.const 4080)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.eq
     (i64.load
      (i32.load offset=8
       (local.tee $6
        (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#requireGet
         (i32.load offset=12
          (local.get $0)
         )
         (local.get $2)
        )
       )
      )
     )
     (i64.load
      (local.get $1)
     )
    )
    (i32.eqz
     (i32.load8_u offset=50
      (local.get $6)
     )
    )
    (i32.const 0)
   )
   (i32.const 4208)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $3)
    (i64.load offset=24
     (local.get $6)
    )
   )
   (i32.const 4288)
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.load offset=32
     (local.get $6)
    )
   )
   (i32.const 4352)
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $6)
   (i64.sub
    (i64.load offset=24
     (local.get $6)
    )
    (local.get $3)
   )
  )
  (call $position/assembly/position.contract/Position#set:last_update
   (local.get $6)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $6)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (block (result i32)
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
      (local.tee $6
       (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#find
        (i32.load
         (local.tee $7
          (i32.load offset=16
           (local.get $0)
          )
         )
        )
        (i64.load offset=16
         (local.get $6)
        )
       )
      )
     )
     (i32.const 4432)
    )
    (i64.le_u
     (local.get $3)
     (i64.load offset=8
      (local.tee $6
       (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#get
        (i32.load
         (local.get $7)
        )
        (local.get $6)
       )
      )
     )
    )
   )
   (i32.const 4496)
  )
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $6)
   (i64.sub
    (i64.load offset=8
     (local.get $6)
    )
    (local.get $3)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/CollateralPool>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $6)
   (i32.load
    (local.get $0)
   )
  )
  (call $shared/inline/sendTransfer
   (local.get $4)
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (local.get $5)
  )
 )
 (func $position/assembly/position.contract/closePositionAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
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
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
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
     (local.get $3)
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
 (func $position/assembly/position.contract/onTransferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $1)
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
 (func $position/assembly/position.contract/PositionContract#onTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
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
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<position/assembly/position.contract/PositionConfig>#get
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
     (i32.load offset=12
      (local.get $2)
     )
    )
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 0)
   )
   (i32.const 4080)
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
          (i32.const 5056)
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
       (i32.const 5056)
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
           (local.tee $9
            (i32.load16_u
             (local.get $8)
            )
           )
          )
          (br $__inlined_func$~lib/util/string/compareImpl
           (i32.sub
            (local.get $9)
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
   (i32.const 5104)
  )
  (local.set $8
   (i32.load offset=12
    (local.get $0)
   )
  )
  (block $__inlined_func$~lib/string/String#substring
   (if
    (i32.eqz
     (local.tee $6
      (i32.sub
       (local.tee $9
        (i32.shl
         (select
          (local.tee $5
           (select
            (i32.const 8)
            (local.tee $4
             (call $~lib/string/String#get:length
              (local.get $2)
             )
            )
            (i32.gt_s
             (local.get $4)
             (i32.const 8)
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
      (i32.const 4048)
     )
     (br $__inlined_func$~lib/string/String#substring)
    )
   )
   (br_if $__inlined_func$~lib/string/String#substring
    (select
     (i32.const 0)
     (i32.eq
      (local.get $9)
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
   (i32.const 5168)
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
      (i32.const 5232)
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
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.eq
     (i64.load
      (i32.load offset=8
       (local.tee $2
        (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#requireGet
         (local.get $8)
         (local.get $7)
        )
       )
      )
     )
     (i64.load
      (local.get $1)
     )
    )
    (i32.eqz
     (i32.load8_u offset=50
      (local.get $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 4208)
  )
  (call $position/assembly/position.contract/Position#set:collateral
   (local.get $2)
   (i64.add
    (i64.load offset=24
     (local.get $2)
    )
    (i64.load
     (local.get $3)
    )
   )
  )
  (call $position/assembly/position.contract/Position#set:last_update
   (local.get $2)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (if
   (local.tee $1
    (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#getByKey
     (i32.load
      (i32.load offset=16
       (local.get $0)
      )
     )
     (i64.load offset=16
      (local.get $2)
     )
    )
   )
   (block
    (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
     (local.get $1)
     (i64.add
      (i64.load offset=8
       (local.get $1)
      )
      (i64.load
       (local.get $3)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/CollateralPool>#update
     (i32.load offset=16
      (local.get $0)
     )
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $1
     (i32.load offset=16
      (local.get $0)
     )
    )
    (local.set $2
     (call $position/assembly/position.contract/CollateralPool#constructor
      (i32.const 0)
      (i64.load offset=16
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.set $0
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireNotFind
      (i32.load
       (local.get $1)
      )
      (local.tee $7
       (i64.load
        (local.get $2)
       )
      )
      (i32.const 1200)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#store
      (i32.load
       (local.get $1)
      )
      (local.get $2)
      (local.get $0)
     )
    )
    (if
     (i64.ge_u
      (local.get $7)
      (i64.load offset=8
       (local.get $1)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
      (local.get $1)
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
  )
 )
 (func $position/assembly/position.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $position/assembly/position.contract/Position#constructor
    (i32.const 0)
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i32.const 0)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $position/assembly/position.contract/Position.get:tableName)
    (call $position/assembly/position.contract/Position#getTableIndexes
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
  (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $position/assembly/position.contract/CollateralPool#constructor
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
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $position/assembly/position.contract/CollateralPool.get:tableName)
    (call $position/assembly/position.contract/CollateralPool#getTableIndexes
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
   (call $position/assembly/position.contract/PositionConfig#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (i64.load
    (local.tee $7
     (call $position/assembly/position.contract/PositionConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor@varargs
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
         (i32.const 16)
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
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $position/assembly/position.contract/PositionConfig#unpack
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
        (local.tee $10
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
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<position/assembly/position.contract/PositionConfig>#get
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
       (call $position/assembly/position.contract/PositionConfig#constructor
        (i32.const 0)
        (local.get $6)
        (local.get $7)
        (local.get $8)
        (local.get $10)
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
        (local.tee $8
         (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $8)
        (local.get $6)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#store
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
      (i64.const -6533251006518525952)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 18)
         (i32.const 41)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $position/assembly/position.contract/openPositionAction#set:chosen_rate
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $position/assembly/position.contract/openPositionAction#unpack
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
      (call $position/assembly/position.contract/PositionContract#openPosition
       (local.get $4)
       (local.get $6)
       (i64.load offset=8
        (local.get $5)
       )
       (i32.load16_u offset=16
        (local.get $5)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 32)
         (i32.const 44)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (call $position/assembly/position.contract/withdrawAction#set:token
       (local.get $5)
       (i32.const 0)
      )
      (call $position/assembly/position.contract/withdrawAction#set:quantity
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $position/assembly/position.contract/withdrawAction#unpack
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
      (local.set $9
       (i64.load offset=8
        (local.get $5)
       )
      )
      (local.set $11
       (i64.load offset=16
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=24
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=28
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $position/assembly/position.contract/PositionContract#withdraw
       (local.get $4)
       (local.get $6)
       (local.get $9)
       (local.get $11)
       (local.get $7)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4929617874097537024)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 54)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<position/assembly/position.contract/Position>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $position/assembly/position.contract/closePositionAction#unpack
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
      (local.set $9
       (i64.load offset=8
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $6)
      )
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.tee $5
           (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#requireGet
            (i32.load offset=12
             (local.get $4)
            )
            (local.get $9)
           )
          )
         )
        )
        (i64.load
         (local.get $6)
        )
       )
       (i32.const 4864)
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (i64.eqz
         (i64.load offset=24
          (local.get $5)
         )
        )
        (i64.eqz
         (i64.load offset=32
          (local.get $5)
         )
        )
        (i32.const 0)
       )
       (i32.const 4928)
      )
      (call $position/assembly/position.contract/Position#set:status
       (local.get $5)
       (i32.const 3)
      )
      (call $position/assembly/position.contract/Position#set:last_update
       (local.get $5)
       (i64.extend_i32_u
        (call $~lib/as-chain/system/currentTimeSec)
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<position/assembly/position.contract/Position>#update
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
        (i32.const 55)
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
      (i32.const 4048)
     )
     (drop
      (call $position/assembly/position.contract/onTransferAction#unpack
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
     (call $position/assembly/position.contract/PositionContract#onTransfer
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
 (func $position/assembly/position.contract/PositionDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 5296)
    )
   )
  )
  (call $position/assembly/position.contract/PositionDB#constructor
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
    (i32.const 5440)
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5408)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5408)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5664)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5664)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/Position>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $position/assembly/position.contract/Position#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i32) (param $8 i32) (param $9 i64) (param $10 i64) (result i32)
  (block $10of10
   (block $9of10
    (block $8of10
     (block $7of10
      (block $6of10
       (block $5of10
        (block $4of10
         (block $3of10
          (block $2of10
           (block $1of10
            (block $0of10
             (block $outOfRange
              (br_table $0of10 $1of10 $2of10 $3of10 $4of10 $5of10 $6of10 $7of10 $8of10 $9of10 $10of10 $outOfRange
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
      (local.set $7
       (i32.const 0)
      )
     )
     (local.set $8
      (i32.const 0)
     )
    )
    (local.set $9
     (i64.const 0)
    )
   )
   (local.set $10
    (i64.const 0)
   )
  )
  (call $position/assembly/position.contract/Position#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (local.get $7)
   (local.get $8)
   (local.get $9)
   (local.get $10)
  )
 )
 (func $position/assembly/position.contract/Position.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $position/assembly/position.contract/PositionDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $position/assembly/position.contract/Position.get:tableName)
   (call $position/assembly/position.contract/Position.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $position/assembly/position.contract/CollateralPoolDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 5696)
    )
   )
  )
  (call $position/assembly/position.contract/CollateralPoolDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5728)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5728)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5760)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5760)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/CollateralPool>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $position/assembly/position.contract/CollateralPool#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (result i32)
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
  (call $position/assembly/position.contract/CollateralPool#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
  )
 )
 (func $position/assembly/position.contract/CollateralPool.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $position/assembly/position.contract/CollateralPoolDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $position/assembly/position.contract/CollateralPool.get:tableName)
   (call $position/assembly/position.contract/CollateralPool.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $position/assembly/position.contract/PositionConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 5792)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5824)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5824)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 5856)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 5856)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<position/assembly/position.contract/Position>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#find
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
 (func $position/assembly/position.contract/PositionConfig#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $position/assembly/position.contract/PositionConfig#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $position/assembly/position.contract/PositionConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
   (call $position/assembly/position.contract/PositionConfig.get:tableName)
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
   (call $~lib/as-chain/mi/MultiIndex<position/assembly/position.contract/PositionConfig>#constructor@varargs
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
  )
  (local.get $2)
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
     (i32.const 52)
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
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case15
      (block $case14
       (block $case13
        (block $case12
         (block $case11
          (block $case10
           (block $case9
            (block $case7
             (block $case6
              (block $case4
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
                  (br_if $case4
                   (i32.eq
                    (local.get $2)
                    (i32.const 41)
                   )
                  )
                  (br_if $folding-inner1
                   (i32.eq
                    (local.get $2)
                    (i32.const 55)
                   )
                  )
                  (br_if $case6
                   (i32.eq
                    (local.get $2)
                    (i32.const 44)
                   )
                  )
                  (br_if $case7
                   (i32.eq
                    (local.get $2)
                    (i32.const 54)
                   )
                  )
                  (br_if $folding-inner1
                   (i32.eq
                    (local.get $2)
                    (i32.const 47)
                   )
                  )
                  (br_if $case9
                   (i32.eq
                    (local.get $2)
                    (i32.const 43)
                   )
                  )
                  (br_if $case10
                   (i32.eq
                    (local.get $2)
                    (i32.const 42)
                   )
                  )
                  (br_if $case11
                   (i32.eq
                    (local.get $2)
                    (i32.const 50)
                   )
                  )
                  (br_if $case12
                   (i32.eq
                    (local.get $2)
                    (i32.const 53)
                   )
                  )
                  (br_if $case13
                   (i32.eq
                    (local.get $2)
                    (i32.const 5)
                   )
                  )
                  (br_if $case14
                   (i32.eq
                    (local.get $2)
                    (i32.const 46)
                   )
                  )
                  (br_if $case15
                   (i32.eq
                    (local.get $2)
                    (i32.const 45)
                   )
                  )
                  (br $default)
                 )
                )
                (return
                 (call $position/assembly/position.contract/Position#unpack
                  (local.get $0)
                  (local.get $1)
                 )
                )
               )
               (return
                (call $position/assembly/position.contract/CollateralPool#unpack
                 (local.get $0)
                 (local.get $1)
                )
               )
              )
              (return
               (call $position/assembly/position.contract/openPositionAction#unpack
                (local.get $0)
                (local.get $1)
               )
              )
             )
             (return
              (call $position/assembly/position.contract/withdrawAction#unpack
               (local.get $0)
               (local.get $1)
              )
             )
            )
            (return
             (call $position/assembly/position.contract/closePositionAction#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
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
           (return
            (i32.load offset=4
             (local.get $0)
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
         (return
          (i32.load offset=4
           (local.get $1)
          )
         )
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
       (i32.const 5888)
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
      (i32.const 5936)
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
    (call $position/assembly/position.contract/PositionConfig#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (call $position/assembly/position.contract/onTransferAction#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
    (block $case15
     (block $case14
      (block $case13
       (block $case12
        (block $case11
         (block $case10
          (block $case9
           (block $case8
            (block $case7
             (block $case6
              (block $case5
               (block $case4
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
                     (br_if $case4
                      (i32.eq
                       (local.get $1)
                       (i32.const 41)
                      )
                     )
                     (br_if $case5
                      (i32.eq
                       (local.get $1)
                       (i32.const 55)
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
                       (i32.const 54)
                      )
                     )
                     (br_if $case8
                      (i32.eq
                       (local.get $1)
                       (i32.const 47)
                      )
                     )
                     (br_if $case9
                      (i32.eq
                       (local.get $1)
                       (i32.const 43)
                      )
                     )
                     (br_if $case10
                      (i32.eq
                       (local.get $1)
                       (i32.const 42)
                      )
                     )
                     (br_if $case11
                      (i32.eq
                       (local.get $1)
                       (i32.const 50)
                      )
                     )
                     (br_if $case12
                      (i32.eq
                       (local.get $1)
                       (i32.const 53)
                      )
                     )
                     (br_if $case13
                      (i32.eq
                       (local.get $1)
                       (i32.const 5)
                      )
                     )
                     (br_if $case14
                      (i32.eq
                       (local.get $1)
                       (i32.const 46)
                      )
                     )
                     (br_if $case15
                      (i32.eq
                       (local.get $1)
                       (i32.const 45)
                      )
                     )
                     (br $default)
                    )
                   )
                   (return
                    (call $position/assembly/position.contract/Position#pack
                     (local.get $0)
                    )
                   )
                  )
                  (return
                   (call $position/assembly/position.contract/CollateralPool#pack
                    (local.get $0)
                   )
                  )
                 )
                 (return
                  (call $position/assembly/position.contract/PositionConfig#pack
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
                (br $folding-inner0)
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
                 (i32.const 18)
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
               (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                (local.get $1)
                (i32.load16_u offset=16
                 (local.get $0)
                )
               )
               (br $folding-inner0)
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
                (i32.add
                 (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                  (i32.load offset=12
                   (local.get $0)
                  )
                 )
                 (i32.const 32)
                )
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
              (call $~lib/as-chain/serializer/Encoder#packString
               (local.get $1)
               (i32.load offset=12
                (local.get $0)
               )
              )
              (br $folding-inner0)
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
               (i32.load offset=24
                (local.get $0)
               )
              )
              (unreachable)
             )
             (if
              (i32.eqz
               (i32.load offset=28
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
             (if
              (i32.eqz
               (local.tee $2
                (i32.load offset=24
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
                (i32.load offset=28
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
             (br $folding-inner0)
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
              (i32.const 16)
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
            (br $folding-inner0)
           )
           (return
            (call $shared/inline/TransferAction#pack
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
          (br $folding-inner0)
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
         (br $folding-inner0)
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
        (br $folding-inner0)
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
        (i32.const 8)
       )
      )
      (i64.load
       (local.get $0)
      )
     )
     (br $folding-inner0)
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
    (br $folding-inner0)
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
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
 (func $~setArgumentsLength (param $0 i32)
  (global.set $~argumentsLength
   (local.get $0)
  )
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 5964)
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
