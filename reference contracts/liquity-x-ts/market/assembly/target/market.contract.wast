(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_i32_i32_i64_i64_i64_i32_i32_i64_=>_i32 (func (param i32 i64 i32 i32 i32 i64 i64 i64 i32 i32 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i64_i64_i64_i32_i64_=>_none (func (param i32 i32 i32 i32 i64 i64 i64 i32 i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
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
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $market/assembly/market.contract/MarketDB i32 (i32.const 7))
 (global $market/assembly/market.contract/Market i32 (i32.const 8))
 (global $market/assembly/market.contract/MarketConfigDB i32 (i32.const 25))
 (global $market/assembly/market.contract/MarketConfig i32 (i32.const 26))
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
 (data (i32.const 2812) "<")
 (data (i32.const 2824) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2876) "<")
 (data (i32.const 2888) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2952) "\01")
 (data (i32.const 2972) "\\")
 (data (i32.const 2984) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3068) "<")
 (data (i32.const 3080) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3132) "l")
 (data (i32.const 3144) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3244) "L")
 (data (i32.const 3256) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3324) "L")
 (data (i32.const 3336) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3404) "<")
 (data (i32.const 3416) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3548) "<")
 (data (i32.const 3560) "\01\00\00\00,\00\00\00g\00e\00t\00I\00d\00x\00D\00B\00:\00 \00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3612) "\\")
 (data (i32.const 3624) "\01\00\00\00J\00\00\00i\00d\00x\00U\00p\00d\00a\00t\00e\00:\00 \00v\00a\00l\00u\00e\00 \00b\00y\00 \00p\00r\00i\00m\00a\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 3708) "\1c")
 (data (i32.const 3740) "\1c")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3804) "L")
 (data (i32.const 3816) "\01\00\00\00<\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00a\00r\00k\00e\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3884) "<")
 (data (i32.const 3896) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00b\00a\00d\00 \00r\00a\00t\00i\00o\00s")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00&\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00a\00c\00c\00o\00u\00n\00t\00s")
 (data (i32.const 4012) "<")
 (data (i32.const 4024) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00a\00r\00k\00e\00t")
 (data (i32.const 4076) "\1c")
 (data (i32.const 4108) "L")
 (data (i32.const 4120) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\'\00\00\00\0c\00\00\00 \10\00\00\00\00\00\00\90\0b")
 (data (i32.const 4220) "\1c")
 (data (i32.const 4232) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4252) "\\")
 (data (i32.const 4264) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4348) ",")
 (data (i32.const 4360) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4396) ",")
 (data (i32.const 4408) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 4444) "\1c")
 (data (i32.const 4456) "\'\00\00\00\0c\00\00\00\10\11\00\00\00\00\00\00@\11")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4508) "\1c")
 (data (i32.const 4520) "\'\00\00\00\0c\00\00\00 \10\00\00\00\00\00\00\90\0b")
 (data (i32.const 4540) "\1c")
 (data (i32.const 4552) "\'\00\00\00\0c\00\00\00\10\11\00\00\00\00\00\00@\11")
 (data (i32.const 4572) ",")
 (data (i32.const 4584) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (export "MarketDB" (global $market/assembly/market.contract/MarketDB))
 (export "MarketDB#get:db" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:db))
 (export "MarketDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "MarketDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:idxdbs))
 (export "MarketDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "MarketDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:nextPrimaryKey))
 (export "MarketDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope))
 (export "MarketDB#constructor" (func $market/assembly/market.contract/MarketDB#constructor@varargs))
 (export "MarketDB#set" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#set))
 (export "MarketDB#store" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#store))
 (export "MarketDB#update" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#update))
 (export "MarketDB#remove" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#remove))
 (export "MarketDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#removeEx))
 (export "MarketDB#get" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get))
 (export "MarketDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#getByKey))
 (export "MarketDB#next" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#next))
 (export "MarketDB#previous" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#previous))
 (export "MarketDB#find" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find))
 (export "MarketDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireFind@varargs))
 (export "MarketDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireNotFind@varargs))
 (export "MarketDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#lowerBound))
 (export "MarketDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#upperBound))
 (export "MarketDB#begin" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#begin))
 (export "MarketDB#end" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end))
 (export "MarketDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#getIdxDB))
 (export "MarketDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#idxUpdate))
 (export "MarketDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#availablePrimaryKey))
 (export "Market" (global $market/assembly/market.contract/Market))
 (export "Market#pack" (func $market/assembly/market.contract/Market#pack))
 (export "Market#unpack" (func $market/assembly/market.contract/Market#unpack))
 (export "Market#getSize" (func $market/assembly/market.contract/Market#getSize))
 (export "Market#getPrimaryValue" (func $market/assembly/market.contract/Market#get:primary))
 (export "Market#getSecondaryValue" (func $market/assembly/market.contract/Market#getSecondaryValue))
 (export "Market#setSecondaryValue" (func $market/assembly/market.contract/Market#setSecondaryValue))
 (export "Market#get:market_id" (func $market/assembly/market.contract/Market#get:primary))
 (export "Market#set:market_id" (func $~lib/as-chain/name/Name#set:N))
 (export "Market#get:symbol" (func $market/assembly/market.contract/Market#get:symbol))
 (export "Market#set:symbol" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "Market#get:collateral_contract" (func $market/assembly/market.contract/Market#get:collateral_contract))
 (export "Market#set:collateral_contract" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "Market#get:oracle" (func $market/assembly/market.contract/Market#get:oracle))
 (export "Market#set:oracle" (func $market/assembly/market.contract/Market#set:oracle))
 (export "Market#get:mcr" (func $market/assembly/market.contract/Market#get:mcr))
 (export "Market#set:mcr" (func $market/assembly/market.contract/Market#set:mcr))
 (export "Market#get:ccr" (func $market/assembly/market.contract/Market#get:ccr))
 (export "Market#set:ccr" (func $market/assembly/market.contract/Market#set:ccr))
 (export "Market#get:mint_cap" (func $market/assembly/market.contract/Market#get:mint_cap))
 (export "Market#set:mint_cap" (func $market/assembly/market.contract/Market#set:mint_cap))
 (export "Market#get:interest_model" (func $market/assembly/market.contract/Market#get:interest_model))
 (export "Market#set:interest_model" (func $market/assembly/market.contract/Market#set:interest_model))
 (export "Market#get:paused" (func $market/assembly/market.contract/Market#get:paused))
 (export "Market#set:paused" (func $market/assembly/market.contract/Market#set:paused))
 (export "Market#get:liquidation_bonus" (func $market/assembly/market.contract/Market#get:liquidation_bonus))
 (export "Market#set:liquidation_bonus" (func $market/assembly/market.contract/Market#set:liquidation_bonus))
 (export "Market#constructor" (func $market/assembly/market.contract/Market#constructor@varargs))
 (export "Market#get:primary" (func $market/assembly/market.contract/Market#get:primary))
 (export "Market#getTableName" (func $market/assembly/market.contract/Market#getTableName))
 (export "Market#getTableIndexes" (func $market/assembly/market.contract/Market#getTableIndexes))
 (export "Market.get:tableName" (func $market/assembly/market.contract/Market.get:tableName))
 (export "Market.tableIndexes" (func $market/assembly/market.contract/Market.tableIndexes))
 (export "Market.new" (func $market/assembly/market.contract/Market.new@varargs))
 (export "MarketConfigDB" (global $market/assembly/market.contract/MarketConfigDB))
 (export "MarketConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:db))
 (export "MarketConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "MarketConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:idxdbs))
 (export "MarketConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "MarketConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:nextPrimaryKey))
 (export "MarketConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope))
 (export "MarketConfigDB#constructor" (func $market/assembly/market.contract/MarketConfigDB#constructor@varargs))
 (export "MarketConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#set))
 (export "MarketConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#store))
 (export "MarketConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#update))
 (export "MarketConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#remove))
 (export "MarketConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#removeEx))
 (export "MarketConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#get))
 (export "MarketConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#getByKey))
 (export "MarketConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#next))
 (export "MarketConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#previous))
 (export "MarketConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find))
 (export "MarketConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#requireFind@varargs))
 (export "MarketConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#requireNotFind@varargs))
 (export "MarketConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#lowerBound))
 (export "MarketConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#upperBound))
 (export "MarketConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#begin))
 (export "MarketConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#end))
 (export "MarketConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#getIdxDB))
 (export "MarketConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#idxUpdate))
 (export "MarketConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#availablePrimaryKey))
 (export "MarketConfig" (global $market/assembly/market.contract/MarketConfig))
 (export "MarketConfig#pack" (func $market/assembly/market.contract/MarketConfig#pack))
 (export "MarketConfig#unpack" (func $market/assembly/market.contract/MarketConfig#unpack))
 (export "MarketConfig#getSize" (func $market/assembly/market.contract/MarketConfig#getSize))
 (export "MarketConfig#getPrimaryValue" (func $market/assembly/market.contract/MarketConfig#getPrimaryValue))
 (export "MarketConfig#getSecondaryValue" (func $market/assembly/market.contract/Market#getSecondaryValue))
 (export "MarketConfig#setSecondaryValue" (func $market/assembly/market.contract/Market#setSecondaryValue))
 (export "MarketConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:db))
 (export "MarketConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "MarketConfig#constructor" (func $market/assembly/market.contract/MarketConfig#constructor@varargs))
 (export "MarketConfig#getTableName" (func $market/assembly/market.contract/MarketConfig#getTableName))
 (export "MarketConfig#getTableIndexes" (func $market/assembly/market.contract/MarketConfig#getTableIndexes))
 (export "MarketConfig.get:tableName" (func $market/assembly/market.contract/MarketConfig.get:tableName))
 (export "MarketConfig.tableIndexes" (func $market/assembly/market.contract/MarketConfig.tableIndexes))
 (export "MarketConfig.new" (func $market/assembly/market.contract/MarketConfig.new@varargs))
 (export "apply" (func $market/assembly/market.contract/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
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
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $3
   (global.get $~lib/rt/stub/offset)
  )
  (if
   (i32.gt_u
    (local.tee $0
     (i32.add
      (local.tee $4
       (i32.add
        (global.get $~lib/rt/stub/offset)
        (i32.const 4)
       )
      )
      (local.tee $5
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
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $5)
  )
  (local.get $4)
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
  (i32.store offset=16
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 12)
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
       (i32.const 13)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
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
 (func $market/assembly/market.contract/MarketDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
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
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
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
     (local.get $3)
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
            (local.get $3)
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
             (local.tee $4
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
                      (local.get $4)
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
  (i32.store8
   (local.get $1)
   (i32.const 0)
  )
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $4
   (i32.add
    (local.tee $2
     (local.get $1)
    )
    (i32.load offset=16
     (i32.sub
      (local.get $2)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $0
   (i32.const 1)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $2)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $0
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $2)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.eqz
          (local.get $3)
         )
        )
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $0)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $2)
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
              (local.get $2)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $0)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__new
    (local.get $0)
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $1)
   (call $~lib/string/String#get:length
    (local.get $1)
   )
   (local.get $0)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 17)
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
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
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
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
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
 (func $market/assembly/market.contract/Market#set:oracle (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:mcr (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:ccr (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:mint_cap (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:interest_model (param $0 i32) (param $1 i32)
  (i32.store8 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:paused (param $0 i32) (param $1 i32)
  (i32.store8 offset=49
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#set:liquidation_bonus (param $0 i32) (param $1 i64)
  (i64.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#constructor (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i32) (param $9 i32) (param $10 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 64)
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (call $market/assembly/market.contract/Market#set:oracle
   (local.get $0)
   (local.get $4)
  )
  (call $market/assembly/market.contract/Market#set:mcr
   (local.get $0)
   (local.get $5)
  )
  (call $market/assembly/market.contract/Market#set:ccr
   (local.get $0)
   (local.get $6)
  )
  (call $market/assembly/market.contract/Market#set:mint_cap
   (local.get $0)
   (local.get $7)
  )
  (call $market/assembly/market.contract/Market#set:interest_model
   (local.get $0)
   (local.get $8)
  )
  (call $market/assembly/market.contract/Market#set:paused
   (local.get $0)
   (local.get $9)
  )
  (call $market/assembly/market.contract/Market#set:liquidation_bonus
   (local.get $0)
   (local.get $10)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Symbol#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 11)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 2960)
    )
    (i32.const 7)
   )
   (i32.const 2832)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (i32.const 2960)
     )
     (local.get $1)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $2
         (i64.extend_i32_s
          (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
           (drop
            (br_if $__inlined_func$~lib/string/String#charCodeAt
             (i32.const -1)
             (i32.ge_u
              (local.tee $3
               (i32.sub
                (i32.sub
                 (call $~lib/string/String#get:length
                  (i32.const 2960)
                 )
                 (i32.const 1)
                )
                (local.get $1)
               )
              )
              (call $~lib/string/String#get:length
               (i32.const 2960)
              )
             )
            )
           )
           (i32.load16_u
            (i32.add
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
             (i32.const 2960)
            )
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
      (i32.const 2896)
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
 (func $market/assembly/market.contract/Market#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i32) (param $9 i32) (param $10 i64) (result i32)
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
            (call $~lib/as-chain/asset/Symbol#constructor)
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
        (local.set $5
         (i64.const 0)
        )
       )
       (local.set $6
        (i64.const 0)
       )
      )
      (local.set $7
       (i64.const 0)
      )
     )
     (local.set $8
      (i32.const 0)
     )
    )
    (local.set $9
     (i32.const 0)
    )
   )
   (local.set $10
    (i64.const 0)
   )
  )
  (call $market/assembly/market.contract/Market#constructor
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
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
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
    (i32.const 2992)
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
 (func $market/assembly/market.contract/Market#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
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
  (call $market/assembly/market.contract/Market#set:oracle
   (local.get $0)
   (local.get $2)
  )
  (call $market/assembly/market.contract/Market#set:mcr
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:ccr
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:mint_cap
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:interest_model
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:liquidation_bonus
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $market/assembly/market.contract/Market#unpack
    (local.tee $0
     (call $market/assembly/market.contract/Market#constructor@varargs
      (i32.const 0)
      (i64.const 0)
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i32.const 0)
      (i32.const 0)
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
     (i32.const 20)
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
 (func $market/assembly/market.contract/Market#getSize (param $0 i32) (result i32)
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
  (drop
   (i32.load offset=16
    (local.get $0)
   )
  )
  (i32.const 66)
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
    (i32.const 3264)
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
    (i32.const 3344)
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
 (func $market/assembly/market.contract/Market#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $market/assembly/market.contract/Market#getSize
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
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=49
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $market/assembly/market.contract/Market#pack
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
 (func $market/assembly/market.contract/Market#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3424)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
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
     (i32.const 23)
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3152)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#update
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
      (call $market/assembly/market.contract/Market#getSecondaryValue
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
       (call $market/assembly/market.contract/Market#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $market/assembly/market.contract/Market#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
      (call $market/assembly/market.contract/Market#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#get
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
  (call $market/assembly/market.contract/Market#constructor@varargs
   (i32.const 0)
   (i64.const 0)
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i32.const 0)
   (i32.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#remove (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 3568)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/Market#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3424)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3632)
  )
  (call $market/assembly/market.contract/Market#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#update
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end
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
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $market/assembly/market.contract/Market.get:tableName (result i32)
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
   (i64.const -7949128877345865728)
  )
  (local.get $0)
 )
 (func $market/assembly/market.contract/Market.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $market/assembly/market.contract/Market.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 15)
   (i32.const 3728)
  )
 )
 (func $market/assembly/market.contract/Market#get:symbol (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:collateral_contract (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:oracle (param $0 i32) (result i32)
  (i32.load offset=16
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:mcr (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:ccr (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:mint_cap (param $0 i32) (result i64)
  (i64.load offset=40
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:interest_model (param $0 i32) (result i32)
  (i32.load8_u offset=48
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:paused (param $0 i32) (result i32)
  (i32.load8_u offset=49
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#get:liquidation_bonus (param $0 i32) (result i64)
  (i64.load offset=56
   (local.get $0)
  )
 )
 (func $market/assembly/market.contract/Market#getTableName (param $0 i32) (result i32)
  (call $market/assembly/market.contract/Market.get:tableName)
 )
 (func $market/assembly/market.contract/Market#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $market/assembly/market.contract/Market.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
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
 (func $market/assembly/market.contract/MarketConfig#getPrimaryValue (param $0 i32) (result i64)
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
   (i64.const -7914735799294230528)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $market/assembly/market.contract/MarketConfig#constructor (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 4)
       (i32.const 26)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (local.get $0)
 )
 (func $market/assembly/market.contract/MarketConfig#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
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
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $market/assembly/market.contract/MarketConfig#unpack
    (local.tee $0
     (call $market/assembly/market.contract/MarketConfig#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $market/assembly/market.contract/MarketConfig#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 8)
 )
 (func $market/assembly/market.contract/MarketConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $market/assembly/market.contract/MarketConfig#getSize
      (local.get $0)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $market/assembly/market.contract/MarketConfig#pack
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
      (local.get $1)
      (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3152)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#update
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
      (call $market/assembly/market.contract/Market#getSecondaryValue
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
       (call $market/assembly/market.contract/Market#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
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
     (call $market/assembly/market.contract/MarketConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
      (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
       (local.get $1)
      )
      (call $market/assembly/market.contract/Market#getSecondaryValue
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
     (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
      (local.get $0)
      (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#get
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
  (call $market/assembly/market.contract/MarketConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#removeEx
   (local.get $0)
   (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3632)
  )
  (call $market/assembly/market.contract/Market#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/MarketConfig>#update
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $market/assembly/market.contract/MarketConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
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
 (func $market/assembly/market.contract/MarketConfig.get:tableName (result i32)
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
   (i64.const -7914735799294230528)
  )
  (local.get $0)
 )
 (func $market/assembly/market.contract/MarketConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $market/assembly/market.contract/MarketConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 15)
   (i32.const 3760)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 15)
     (i32.const 3792)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $market/assembly/market.contract/MarketConfig#getTableName (param $0 i32) (result i32)
  (call $market/assembly/market.contract/MarketConfig.get:tableName)
 )
 (func $market/assembly/market.contract/MarketConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $market/assembly/market.contract/MarketConfig.tableIndexes
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<market/assembly/market.contract/MarketConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/MarketConfig>#getValue
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
  (call $market/assembly/market.contract/MarketConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $market/assembly/market.contract/createMarketAction#set:interest_model (param $0 i32) (param $1 i32)
  (i32.store8 offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/createMarketAction#set:liquidation_bonus (param $0 i32) (param $1 i64)
  (i64.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/createMarketAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:mcr
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/Market#set:ccr
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/createMarketAction#set:interest_model
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $market/assembly/market.contract/createMarketAction#set:liquidation_bonus
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/MarketContract#createMarket (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i32) (param $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<market/assembly/market.contract/MarketConfig>#get
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.le_u
     (local.get $4)
     (local.get $5)
    )
    (i32.const 0)
    (i64.ne
     (local.get $4)
     (i64.const 0)
    )
   )
   (i32.const 3904)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.ne
     (i64.load
      (local.get $2)
     )
     (i64.const 0)
    )
    (i64.ne
     (i64.load
      (local.get $3)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (i32.const 3968)
  )
  (if
   (i64.eq
    (i64.load offset=8
     (local.tee $9
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
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#begin
       (i32.load
        (local.get $9)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end
       (i32.load
        (local.get $9)
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
     (local.get $9)
     (i64.const 0)
    )
    (block
     (local.set $10
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#end
       (i32.load
        (local.get $9)
       )
      )
     )
     (local.set $10
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#previous
       (i32.load
        (local.get $9)
       )
       (local.get $10)
      )
     )
     (local.set $12
      (local.tee $11
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get
         (i32.load
          (local.get $9)
         )
         (local.get $10)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $11)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
       (local.get $9)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
       (local.get $9)
       (i64.add
        (local.get $12)
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
     (local.get $9)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (local.set $10
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (call $market/assembly/market.contract/Market#constructor
    (i32.const 0)
    (select
     (i64.const 1)
     (local.tee $11
      (i64.load offset=8
       (local.get $9)
      )
     )
     (i64.eqz
      (local.get $11)
     )
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
    (i32.const 0)
    (local.get $8)
   )
  )
  (local.set $0
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireNotFind
    (i32.load
     (local.get $10)
    )
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1200)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#store
    (i32.load
     (local.get $10)
    )
    (local.get $1)
    (local.get $0)
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $10)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
    (local.get $10)
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
 )
 (func $market/assembly/market.contract/setPausedAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 4032)
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $market/assembly/market.contract/setCapAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
   (local.get $0)
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
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
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
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $7)
  )
  (local.set $4
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
  (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (local.set $7
   (call $market/assembly/market.contract/Market#constructor@varargs
    (i32.const 0)
    (i64.const 0)
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i32.const 0)
    (i32.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#constructor
    (i32.const 0)
    (local.get $4)
    (local.get $4)
    (call $market/assembly/market.contract/Market.get:tableName)
    (call $market/assembly/market.contract/Market#getTableIndexes
     (local.get $7)
     (local.get $4)
     (local.get $4)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $3)
   (local.get $6)
  )
  (local.set $4
   (i32.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 34)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (i32.const 0)
  )
  (drop
   (call $market/assembly/market.contract/MarketConfig#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (i64.load
    (local.tee $6
     (call $market/assembly/market.contract/MarketConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor@varargs
    (local.get $4)
    (local.get $4)
    (local.get $6)
   )
  )
  (call $market/assembly/market.contract/Market#set:oracle
   (local.get $3)
   (local.get $5)
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $8
      (call $~lib/array/Array<u8>#constructor
       (local.tee $4
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $4)
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
       (local.tee $4
        (call $~lib/rt/stub/__new
         (i32.const 4)
         (i32.const 35)
        )
       )
       (i32.const 0)
      )
      (drop
       (call $market/assembly/market.contract/MarketConfig#unpack
        (local.get $4)
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $4)
      )
      (call $~lib/as-chain/system/check
       (i64.eqz
        (i64.load
         (i32.load
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<market/assembly/market.contract/MarketConfig>#get
           (i32.load offset=16
            (local.get $3)
           )
          )
         )
        )
       )
       (i32.const 3824)
      )
      (local.set $5
       (i32.load offset=16
        (local.get $3)
       )
      )
      (local.set $6
       (call $market/assembly/market.contract/MarketConfig#constructor
        (i32.const 0)
        (local.get $4)
       )
      )
      (local.set $7
       (i32.load
        (local.get $3)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
        (local.tee $4
         (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $4)
        (local.get $6)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#store
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
      (i64.const 5031766162435211264)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 56)
         (i32.const 36)
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
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (call $market/assembly/market.contract/Market#set:mcr
       (local.get $5)
       (i64.const 0)
      )
      (call $market/assembly/market.contract/Market#set:ccr
       (local.get $5)
       (i64.const 0)
      )
      (call $market/assembly/market.contract/createMarketAction#set:interest_model
       (local.get $5)
       (i32.const 0)
      )
      (call $market/assembly/market.contract/createMarketAction#set:liquidation_bonus
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $market/assembly/market.contract/createMarketAction#unpack
        (local.get $5)
        (local.get $8)
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
        (local.tee $4
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $market/assembly/market.contract/MarketContract#createMarket
       (local.get $3)
       (local.get $6)
       (local.get $7)
       (local.get $4)
       (i64.load offset=16
        (local.get $5)
       )
       (i64.load offset=24
        (local.get $5)
       )
       (i64.load offset=32
        (local.get $5)
       )
       (i32.load8_u offset=40
        (local.get $5)
       )
       (i64.load offset=48
        (local.get $5)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417095090321227776)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $4
        (call $~lib/rt/stub/__new
         (i32.const 9)
         (i32.const 37)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#set:validPrimary
       (local.get $4)
       (i32.const 0)
      )
      (drop
       (call $market/assembly/market.contract/setPausedAction#unpack
        (local.get $4)
        (local.get $8)
       )
      )
      (local.set $0
       (i64.load
        (local.get $4)
       )
      )
      (local.set $7
       (i32.load8_u offset=8
        (local.get $4)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<market/assembly/market.contract/MarketConfig>#get
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
      )
      (call $market/assembly/market.contract/Market#set:paused
       (local.tee $4
        (call $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#requireGet
         (i32.load offset=12
          (local.get $3)
         )
         (local.get $0)
        )
       )
       (local.get $7)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#update
       (i32.load offset=12
        (local.get $3)
       )
       (local.get $4)
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417323887696543744)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $4
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 38)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<market/assembly/market.contract/Market>#set:scope
       (local.get $4)
       (i64.const 0)
      )
      (drop
       (call $market/assembly/market.contract/setCapAction#unpack
        (local.get $4)
        (local.get $8)
       )
      )
      (local.set $1
       (i64.load
        (local.get $4)
       )
      )
      (local.set $0
       (i64.load offset=8
        (local.get $4)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<market/assembly/market.contract/MarketConfig>#get
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
      )
      (call $market/assembly/market.contract/Market#set:mint_cap
       (local.tee $4
        (call $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#requireGet
         (i32.load offset=12
          (local.get $3)
         )
         (local.get $1)
        )
       )
       (local.get $0)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<market/assembly/market.contract/Market>#update
       (i32.load offset=12
        (local.get $3)
       )
       (local.get $4)
       (i32.load
        (local.get $3)
       )
      )
     )
    )
   )
  )
 )
 (func $market/assembly/market.contract/MarketDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 15)
     (i32.const 4096)
    )
   )
  )
  (call $market/assembly/market.contract/MarketDB#constructor
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
    (i32.const 4240)
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
      (i32.const 2960)
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
     (i32.const 2960)
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
      (i32.const 2960)
     )
    )
   )
   (local.set $0
    (i32.const 2960)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2960)
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
         (i32.const 2960)
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
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4208)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4208)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4464)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4464)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/Market>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $market/assembly/market.contract/Market.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $market/assembly/market.contract/MarketDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $market/assembly/market.contract/Market.get:tableName)
   (call $market/assembly/market.contract/Market.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $market/assembly/market.contract/MarketConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 15)
     (i32.const 4496)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 25)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4528)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4528)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4560)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4560)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<market/assembly/market.contract/Market>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#find
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
 (func $market/assembly/market.contract/MarketConfig#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $market/assembly/market.contract/MarketConfig#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $market/assembly/market.contract/MarketConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
   (call $market/assembly/market.contract/MarketConfig.get:tableName)
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
   (call $~lib/as-chain/mi/MultiIndex<market/assembly/market.contract/MarketConfig>#constructor@varargs
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (block $folding-inner0
   (block $default
    (block $case7
     (block $case6
      (block $case5
       (block $case4
        (block $case3
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
           (br_if $folding-inner0
            (i32.or
             (i32.eq
              (local.get $2)
              (i32.const 26)
             )
             (i32.eq
              (local.get $2)
              (i32.const 35)
             )
            )
           )
           (br_if $case3
            (i32.eq
             (local.get $2)
             (i32.const 36)
            )
           )
           (br_if $case4
            (i32.eq
             (local.get $2)
             (i32.const 37)
            )
           )
           (br_if $case5
            (i32.eq
             (local.get $2)
             (i32.const 38)
            )
           )
           (br_if $case6
            (i32.eq
             (local.get $2)
             (i32.const 5)
            )
           )
           (br_if $case7
            (i32.eq
             (local.get $2)
             (i32.const 11)
            )
           )
           (br $default)
          )
         )
         (return
          (call $market/assembly/market.contract/Market#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $market/assembly/market.contract/createMarketAction#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $market/assembly/market.contract/setPausedAction#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $market/assembly/market.contract/setCapAction#unpack
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
      (local.tee $4
       (call $~lib/as-chain/serializer/Decoder#constructor
        (local.get $1)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
      (local.set $1
       (i32.const 0)
      )
      (local.set $2
       (i32.const 0)
      )
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
     (i32.const 4592)
    )
    (return
     (i32.load offset=4
      (local.get $4)
     )
    )
   )
   (unreachable)
  )
  (call $market/assembly/market.contract/MarketConfig#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
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
               (i32.const 26)
              )
             )
             (br_if $case2
              (i32.eq
               (local.get $1)
               (i32.const 35)
              )
             )
             (br_if $case3
              (i32.eq
               (local.get $1)
               (i32.const 36)
              )
             )
             (br_if $case4
              (i32.eq
               (local.get $1)
               (i32.const 37)
              )
             )
             (br_if $case5
              (i32.eq
               (local.get $1)
               (i32.const 38)
              )
             )
             (br_if $case6
              (i32.eq
               (local.get $1)
               (i32.const 5)
              )
             )
             (br_if $case7
              (i32.eq
               (local.get $1)
               (i32.const 11)
              )
             )
             (br $default)
            )
           )
           (return
            (call $market/assembly/market.contract/Market#pack
             (local.get $0)
            )
           )
          )
          (return
           (call $market/assembly/market.contract/MarketConfig#pack
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
         (local.set $1
          (call $~lib/as-chain/serializer/Encoder#constructor
           (i32.const 8)
          )
         )
         (if
          (i32.eqz
           (local.tee $0
            (i32.load
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
          (i32.const 57)
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
        (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
         (local.get $1)
         (i32.load8_u offset=40
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
         (local.get $1)
         (i64.load offset=48
          (local.get $0)
         )
        )
        (br $folding-inner0)
       )
       (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
        (local.tee $1
         (call $~lib/as-chain/serializer/Encoder#constructor
          (i32.const 9)
         )
        )
        (i64.load
         (local.get $0)
        )
       )
       (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
        (local.get $1)
        (i32.load8_u offset=8
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
      (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
       (local.get $1)
       (i64.load offset=8
        (local.get $0)
       )
      )
      (br $folding-inner0)
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
   (i32.const 4620)
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
