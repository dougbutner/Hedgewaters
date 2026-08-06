(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_i32_=>_i32 (func (param i32 i64 i64 i64 i64 i64 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_i64_i64_=>_none (func (param i32 i32 i64 i64 i64)))
 (type $i32_i32_i64_i64_i64_i64_=>_none (func (param i32 i32 i64 i64 i64 i64)))
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
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $liquidation/assembly/liquidation.contract/LiquidationQueueDB i32 (i32.const 7))
 (global $liquidation/assembly/liquidation.contract/LiquidationQueue i32 (i32.const 8))
 (global $liquidation/assembly/liquidation.contract/LiqConfigDB i32 (i32.const 24))
 (global $liquidation/assembly/liquidation.contract/LiqConfig i32 (i32.const 25))
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
 (data (i32.const 3644) "L")
 (data (i32.const 3656) "\01\00\00\006\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00l\00i\00q\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3724) "<")
 (data (i32.const 3736) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00s\00n\00a\00p\00s")
 (data (i32.const 3788) "<")
 (data (i32.const 3800) "\01\00\00\00 \00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00q\00u\00e\00u\00e")
 (data (i32.const 3852) "<")
 (data (i32.const 3864) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00n\00o\00t\00 \00q\00u\00e\00u\00e\00d")
 (data (i32.const 3916) ",")
 (data (i32.const 3928) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 3964) "\1c")
 (data (i32.const 3976) "\01")
 (data (i32.const 3996) "\1c")
 (data (i32.const 4008) "\'\00\00\00\0c\00\00\00`\0f\00\00\00\00\00\00\90\0f")
 (data (i32.const 4028) ",")
 (data (i32.const 4040) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 4076) "\1c")
 (data (i32.const 4088) "\'\00\00\00\0c\00\00\00\d0\0f\00\00\00\00\00\00\90\0f")
 (data (i32.const 4108) "\1c")
 (data (i32.const 4120) "\01\00\00\00\0c\00\00\00a\00b\00s\00o\00r\00b")
 (data (i32.const 4140) "\1c")
 (data (i32.const 4152) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 4172) "\1c")
 (data (i32.const 4204) "L")
 (data (i32.const 4216) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4284) "\1c")
 (data (i32.const 4296) "\'\00\00\00\0c\00\00\00\80\10\00\00\00\00\00\00\90\0f")
 (data (i32.const 4316) "\1c")
 (data (i32.const 4328) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4348) "\\")
 (data (i32.const 4360) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4444) ",")
 (data (i32.const 4456) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4492) ",")
 (data (i32.const 4504) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 4540) "\1c")
 (data (i32.const 4552) "\'\00\00\00\0c\00\00\00p\11\00\00\00\00\00\00\a0\11")
 (data (i32.const 4572) "\1c")
 (data (i32.const 4604) "\1c")
 (data (i32.const 4616) "\'\00\00\00\0c\00\00\00\80\10\00\00\00\00\00\00\90\0f")
 (data (i32.const 4636) "\1c")
 (data (i32.const 4648) "\'\00\00\00\0c\00\00\00p\11\00\00\00\00\00\00\a0\11")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "LiquidationQueueDB" (global $liquidation/assembly/liquidation.contract/LiquidationQueueDB))
 (export "LiquidationQueueDB#get:db" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:db))
 (export "LiquidationQueueDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "LiquidationQueueDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:idxdbs))
 (export "LiquidationQueueDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "LiquidationQueueDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:nextPrimaryKey))
 (export "LiquidationQueueDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope))
 (export "LiquidationQueueDB#constructor" (func $liquidation/assembly/liquidation.contract/LiquidationQueueDB#constructor@varargs))
 (export "LiquidationQueueDB#set" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#set))
 (export "LiquidationQueueDB#store" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#store))
 (export "LiquidationQueueDB#update" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#update))
 (export "LiquidationQueueDB#remove" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#remove))
 (export "LiquidationQueueDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#removeEx))
 (export "LiquidationQueueDB#get" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get))
 (export "LiquidationQueueDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#getByKey))
 (export "LiquidationQueueDB#next" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#next))
 (export "LiquidationQueueDB#previous" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#previous))
 (export "LiquidationQueueDB#find" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find))
 (export "LiquidationQueueDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireFind@varargs))
 (export "LiquidationQueueDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireNotFind@varargs))
 (export "LiquidationQueueDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#lowerBound))
 (export "LiquidationQueueDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#upperBound))
 (export "LiquidationQueueDB#begin" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#begin))
 (export "LiquidationQueueDB#end" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end))
 (export "LiquidationQueueDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#getIdxDB))
 (export "LiquidationQueueDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#idxUpdate))
 (export "LiquidationQueueDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#availablePrimaryKey))
 (export "LiquidationQueue" (global $liquidation/assembly/liquidation.contract/LiquidationQueue))
 (export "LiquidationQueue#pack" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#pack))
 (export "LiquidationQueue#unpack" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#unpack))
 (export "LiquidationQueue#getSize" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getSize))
 (export "LiquidationQueue#getPrimaryValue" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:primary))
 (export "LiquidationQueue#getSecondaryValue" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue))
 (export "LiquidationQueue#setSecondaryValue" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#setSecondaryValue))
 (export "LiquidationQueue#get:id" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:primary))
 (export "LiquidationQueue#set:id" (func $~lib/as-chain/name/Name#set:N))
 (export "LiquidationQueue#get:position_id" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:nextPrimaryKey))
 (export "LiquidationQueue#set:position_id" (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope))
 (export "LiquidationQueue#get:market" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:market))
 (export "LiquidationQueue#set:market" (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table))
 (export "LiquidationQueue#get:snap_debt" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:snap_debt))
 (export "LiquidationQueue#set:snap_debt" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt))
 (export "LiquidationQueue#get:snap_collateral" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:snap_collateral))
 (export "LiquidationQueue#set:snap_collateral" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral))
 (export "LiquidationQueue#get:status" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:status))
 (export "LiquidationQueue#set:status" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status))
 (export "LiquidationQueue#constructor" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor@varargs))
 (export "LiquidationQueue#get:primary" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:primary))
 (export "LiquidationQueue#getTableName" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getTableName))
 (export "LiquidationQueue#getTableIndexes" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getTableIndexes))
 (export "LiquidationQueue.get:tableName" (func $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName))
 (export "LiquidationQueue.tableIndexes" (func $liquidation/assembly/liquidation.contract/LiquidationQueue.tableIndexes))
 (export "LiquidationQueue.new" (func $liquidation/assembly/liquidation.contract/LiquidationQueue.new@varargs))
 (export "LiqConfigDB" (global $liquidation/assembly/liquidation.contract/LiqConfigDB))
 (export "LiqConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:db))
 (export "LiqConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "LiqConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:idxdbs))
 (export "LiqConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "LiqConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:nextPrimaryKey))
 (export "LiqConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope))
 (export "LiqConfigDB#constructor" (func $liquidation/assembly/liquidation.contract/LiqConfigDB#constructor@varargs))
 (export "LiqConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#set))
 (export "LiqConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#store))
 (export "LiqConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#update))
 (export "LiqConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#remove))
 (export "LiqConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#removeEx))
 (export "LiqConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#get))
 (export "LiqConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#getByKey))
 (export "LiqConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#next))
 (export "LiqConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#previous))
 (export "LiqConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find))
 (export "LiqConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#requireFind@varargs))
 (export "LiqConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#requireNotFind@varargs))
 (export "LiqConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#lowerBound))
 (export "LiqConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#upperBound))
 (export "LiqConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#begin))
 (export "LiqConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#end))
 (export "LiqConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#getIdxDB))
 (export "LiqConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#idxUpdate))
 (export "LiqConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#availablePrimaryKey))
 (export "LiqConfig" (global $liquidation/assembly/liquidation.contract/LiqConfig))
 (export "LiqConfig#pack" (func $liquidation/assembly/liquidation.contract/LiqConfig#pack))
 (export "LiqConfig#unpack" (func $liquidation/assembly/liquidation.contract/LiqConfig#unpack))
 (export "LiqConfig#getSize" (func $liquidation/assembly/liquidation.contract/LiqConfig#getSize))
 (export "LiqConfig#getPrimaryValue" (func $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue))
 (export "LiqConfig#getSecondaryValue" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue))
 (export "LiqConfig#setSecondaryValue" (func $liquidation/assembly/liquidation.contract/LiquidationQueue#setSecondaryValue))
 (export "LiqConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:db))
 (export "LiqConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "LiqConfig#get:position_contract" (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:idxdbs))
 (export "LiqConfig#set:position_contract" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "LiqConfig#get:stability_contract" (func $liquidation/assembly/liquidation.contract/LiqConfig#get:stability_contract))
 (export "LiqConfig#set:stability_contract" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "LiqConfig#get:debt_contract" (func $liquidation/assembly/liquidation.contract/LiqConfig#get:debt_contract))
 (export "LiqConfig#set:debt_contract" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "LiqConfig#constructor" (func $liquidation/assembly/liquidation.contract/LiqConfig#constructor@varargs))
 (export "LiqConfig#getTableName" (func $liquidation/assembly/liquidation.contract/LiqConfig#getTableName))
 (export "LiqConfig#getTableIndexes" (func $liquidation/assembly/liquidation.contract/LiqConfig#getTableIndexes))
 (export "LiqConfig.get:tableName" (func $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName))
 (export "LiqConfig.tableIndexes" (func $liquidation/assembly/liquidation.contract/LiqConfig.tableIndexes))
 (export "LiqConfig.new" (func $liquidation/assembly/liquidation.contract/LiqConfig.new@varargs))
 (export "apply" (func $liquidation/assembly/liquidation.contract/apply))
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
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueueDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk (param $0 i32) (result i32)
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
     (i32.const 16)
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status (param $0 i32) (param $1 i32)
  (i32.store8 offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 41)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt
   (local.get $0)
   (local.get $4)
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral
   (local.get $0)
   (local.get $5)
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $liquidation/assembly/liquidation.contract/LiquidationQueue#unpack
    (local.tee $0
     (call $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i32.const 0)
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getSize (param $0 i32) (result i32)
  (i32.const 41)
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 41)
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $liquidation/assembly/liquidation.contract/LiquidationQueue#pack
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
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
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
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
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
       (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (call $liquidation/assembly/liquidation.contract/LiquidationQueue#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
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
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#remove (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3184)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end
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
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName (result i32)
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
   (i64.const -8381923298774089728)
  )
  (local.get $0)
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3488)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:market (param $0 i32) (result i64)
  (i64.load offset=16
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:snap_debt (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:snap_collateral (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#get:status (param $0 i32) (result i32)
  (i32.load8_u offset=40
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getTableName (param $0 i32) (result i32)
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName)
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
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
 (func $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue (param $0 i32) (result i64)
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
   (i64.const -8491196551597654016)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $liquidation/assembly/liquidation.contract/LiqConfig#unpack (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $liquidation/assembly/liquidation.contract/LiqConfig#unpack
    (local.tee $0
     (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#getSize (param $0 i32) (result i32)
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
 (func $liquidation/assembly/liquidation.contract/LiqConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $liquidation/assembly/liquidation.contract/LiqConfig#getSize
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
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $liquidation/assembly/liquidation.contract/LiqConfig#pack
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.get $1)
   )
   (i32.const 2688)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
       (local.get $1)
      )
      (i32.const 2752)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
      (local.get $1)
      (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:validPrimary
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#update
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
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
       (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
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
     (call $liquidation/assembly/liquidation.contract/LiqConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
      (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
       (local.get $1)
      )
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getSecondaryValue
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
     (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
      (local.get $0)
      (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#get
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
  (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3248)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#removeEx
   (local.get $0)
   (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3392)
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiqConfig>#update
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $liquidation/assembly/liquidation.contract/LiqConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
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
 (func $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName (result i32)
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
   (i64.const -8491196551597654016)
  )
  (local.get $0)
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 14)
   (i32.const 3600)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 3632)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#get:stability_contract (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#get:debt_contract (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#getTableName (param $0 i32) (result i32)
  (call $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName)
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $liquidation/assembly/liquidation.contract/LiqConfig.tableIndexes
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<liquidation/assembly/liquidation.contract/LiqConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiqConfig>#getValue
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
  (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $liquidation/assembly/liquidation.contract/enqueueAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationContract#enqueue (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (select
    (i64.ne
     (local.get $5)
     (i64.const 0)
    )
    (i32.const 0)
    (i64.ne
     (local.get $4)
     (i64.const 0)
    )
   )
   (i32.const 3744)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (i64.eq
    (i64.load offset=8
     (local.tee $1
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
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#begin
       (i32.load
        (local.get $1)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end
       (i32.load
        (local.get $1)
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
     (local.get $1)
     (i64.const 0)
    )
    (block
     (local.set $7
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#end
       (i32.load
        (local.get $1)
       )
      )
     )
     (local.set $7
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#previous
       (i32.load
        (local.get $1)
       )
       (local.get $7)
      )
     )
     (local.set $9
      (local.tee $8
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
         (i32.load
          (local.get $1)
         )
         (local.get $7)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $8)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
       (local.get $1)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
       (local.get $1)
       (i64.add
        (local.get $9)
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
     (local.get $1)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (local.set $1
   (call $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor
    (i32.const 0)
    (select
     (i64.const 1)
     (local.tee $8
      (i64.load offset=8
       (local.get $1)
      )
     )
     (i64.eqz
      (local.get $8)
     )
    )
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (i32.const 0)
   )
  )
  (local.set $0
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireNotFind
    (i32.load
     (local.get $6)
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
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#store
    (i32.load
     (local.get $6)
    )
    (local.get $1)
    (local.get $0)
   )
  )
  (if
   (i64.ge_u
    (local.get $2)
    (i64.load offset=8
     (local.get $6)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
    (local.get $6)
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
 (func $liquidation/assembly/liquidation.contract/absorbAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<liquidation/assembly/liquidation.contract/LiquidationQueue>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
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
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $1
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (i32.const 4016)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4016)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $2)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $2)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $2)
       )
      )
      (block
       (local.set $1
        (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
         (drop
          (br_if $__inlined_func$~lib/string/String#charCodeAt
           (i32.const -1)
           (i32.le_u
            (call $~lib/string/String#get:length
             (local.get $0)
            )
            (local.get $2)
           )
          )
         )
         (i32.load16_u
          (i32.add
           (local.get $0)
           (i32.shl
            (local.get $2)
            (i32.const 1)
           )
          )
         )
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
             (local.get $1)
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
          (i32.const 4096)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 4096)
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
            (local.tee $1
             (i32.add
              (local.get $2)
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
         (local.get $2)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $2
      (local.get $1)
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
     (i32.const 40)
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
 (func $shared/inline/AbsorbAction#pack (param $0 i32) (result i32)
  (local $1 i32)
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
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
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
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
 (func $shared/inline/sendAbsorb (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 38)
    )
   )
   (i32.const 0)
  )
  (local.set $7
   (call $~lib/as-chain/name/S2N
    (i32.const 4128)
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
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (local.get $5)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $7
   (call $~lib/as-chain/name/S2N
    (i32.const 4160)
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
   (local.get $7)
  )
  (local.set $5
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $1)
    (local.get $5)
   )
  )
  (local.set $6
   (i32.load
    (local.get $6)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 41)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 37)
    )
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
   (local.get $0)
   (local.get $4)
  )
  (drop
   (i32.load offset=4
    (local.tee $6
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 42)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
   (local.get $6)
   (i32.const 0)
   (i32.load offset=8
    (local.get $1)
   )
  )
  (local.set $5
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $1
   (i32.load
    (local.get $1)
   )
  )
  (local.set $8
   (call $shared/inline/AbsorbAction#pack
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 43)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $8)
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
 (func $liquidation/assembly/liquidation.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
        (i32.const 30)
       )
      )
     )
     (local.set $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 31)
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
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (local.set $7
   (call $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i32.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName)
    (call $liquidation/assembly/liquidation.contract/LiquidationQueue#getTableIndexes
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
     (i32.const 33)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (i32.const 0)
  )
  (drop
   (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
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
     (call $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor@varargs
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
         (i32.const 34)
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
       (call $liquidation/assembly/liquidation.contract/LiqConfig#unpack
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
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<liquidation/assembly/liquidation.contract/LiqConfig>#get
           (i32.load offset=16
            (local.get $4)
           )
          )
         )
        )
       )
       (i32.const 3664)
      )
      (local.set $5
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $6
       (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
        (local.tee $8
         (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $8)
        (local.get $6)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#store
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
      (i64.const 6119729340130263040)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 40)
         (i32.const 35)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
       (local.get $5)
       (i64.const 0)
      )
      (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
       (local.get $5)
       (i64.const 0)
      )
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_debt
       (local.get $5)
       (i64.const 0)
      )
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:snap_collateral
       (local.get $5)
       (i64.const 0)
      )
      (drop
       (call $liquidation/assembly/liquidation.contract/enqueueAction#unpack
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
      (call $liquidation/assembly/liquidation.contract/LiquidationContract#enqueue
       (local.get $4)
       (local.get $6)
       (i64.load offset=8
        (local.get $5)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (i64.load offset=24
        (local.get $5)
       )
       (i64.load offset=32
        (local.get $5)
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
         (i32.const 8)
         (i32.const 36)
        )
       )
       (i64.const 0)
      )
      (drop
       (call $liquidation/assembly/liquidation.contract/absorbAction#unpack
        (local.get $5)
        (local.get $3)
       )
      )
      (call $~lib/as-chain/system/check
       (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
        (local.tee $5
         (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#find
          (i32.load
           (local.tee $3
            (i32.load offset=12
             (local.get $4)
            )
           )
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (i32.const 3808)
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (i32.load8_u offset=40
         (local.tee $5
          (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#get
           (i32.load
            (local.get $3)
           )
           (local.get $5)
          )
         )
        )
       )
       (i32.const 3872)
      )
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status
       (local.get $5)
       (i32.const 1)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $5)
       (i32.load
        (local.get $4)
       )
      )
      (call $shared/inline/sendAbsorb
       (i32.load offset=8
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<liquidation/assembly/liquidation.contract/LiqConfig>#get
         (i32.load offset=16
          (local.get $4)
         )
        )
       )
       (i32.load
        (local.get $4)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (i64.load offset=24
        (local.get $5)
       )
       (i64.load offset=32
        (local.get $5)
       )
      )
      (call $liquidation/assembly/liquidation.contract/LiquidationQueue#set:status
       (local.get $5)
       (i32.const 2)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<liquidation/assembly/liquidation.contract/LiquidationQueue>#update
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
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueueDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 4192)
    )
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueueDB#constructor
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
    (i32.const 4336)
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4304)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4304)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiquidationQueue>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i32) (result i32)
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
    (i32.const 0)
   )
  )
  (call $liquidation/assembly/liquidation.contract/LiquidationQueue#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiquidationQueue.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $liquidation/assembly/liquidation.contract/LiquidationQueueDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $liquidation/assembly/liquidation.contract/LiquidationQueue.get:tableName)
   (call $liquidation/assembly/liquidation.contract/LiquidationQueue.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 4592)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4624)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4624)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4656)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4656)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<liquidation/assembly/liquidation.contract/LiquidationQueue>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#find
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
 (func $liquidation/assembly/liquidation.contract/LiqConfig#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
  (call $liquidation/assembly/liquidation.contract/LiqConfig#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $liquidation/assembly/liquidation.contract/LiqConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
   (call $liquidation/assembly/liquidation.contract/LiqConfig.get:tableName)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 29)
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
   (call $~lib/as-chain/mi/MultiIndex<liquidation/assembly/liquidation.contract/LiqConfig>#constructor@varargs
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
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $5
      (i32.load offset=8
       (local.get $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.const 268435455)
     )
     (unreachable)
    )
    (local.set $2
     (local.tee $9
      (i32.load
       (local.get $0)
      )
     )
    )
    (if
     (i32.gt_u
      (local.tee $3
       (select
        (local.tee $3
         (select
          (local.tee $3
           (i32.shl
            (local.get $5)
            (i32.const 1)
           )
          )
          (i32.const 1073741820)
          (i32.lt_u
           (local.get $3)
           (i32.const 1073741820)
          )
         )
        )
        (local.tee $1
         (i32.shl
          (select
           (local.get $1)
           (i32.const 8)
           (i32.gt_u
            (local.get $1)
            (i32.const 8)
           )
          )
          (i32.const 2)
         )
        )
        (i32.lt_u
         (local.get $1)
         (local.get $3)
        )
       )
      )
      (i32.const 1073741804)
     )
     (unreachable)
    )
    (local.set $4
     (i32.add
      (local.get $3)
      (i32.const 16)
     )
    )
    (if
     (i32.eqz
      (select
       (i32.eqz
        (i32.and
         (local.tee $1
          (i32.sub
           (local.get $2)
           (i32.const 16)
          )
         )
         (i32.const 15)
        )
       )
       (i32.const 0)
       (local.get $1)
      )
     )
     (unreachable)
    )
    (local.set $8
     (i32.eq
      (global.get $~lib/rt/stub/offset)
      (i32.add
       (local.get $1)
       (local.tee $6
        (i32.load
         (local.tee $7
          (i32.sub
           (local.get $1)
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
        (local.get $4)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
    (if
     (i32.gt_u
      (local.get $4)
      (local.get $6)
     )
     (if
      (local.get $8)
      (block
       (if
        (i32.gt_u
         (local.get $4)
         (i32.const 1073741820)
        )
        (unreachable)
       )
       (call $~lib/rt/stub/maybeGrowMemory
        (i32.add
         (local.get $1)
         (local.get $2)
        )
       )
       (call $~lib/rt/common/BLOCK#set:mmInfo
        (local.get $7)
        (local.get $2)
       )
      )
      (block
       (call $~lib/memory/memory.copy
        (local.tee $2
         (call $~lib/rt/stub/__alloc
          (select
           (local.get $2)
           (local.tee $4
            (i32.shl
             (local.get $6)
             (i32.const 1)
            )
           )
           (i32.gt_u
            (local.get $2)
            (local.get $4)
           )
          )
         )
        )
        (local.get $1)
        (local.get $6)
       )
       (local.set $1
        (local.get $2)
       )
      )
     )
     (if
      (local.get $8)
      (block
       (global.set $~lib/rt/stub/offset
        (i32.add
         (local.get $1)
         (local.get $2)
        )
       )
       (call $~lib/rt/common/BLOCK#set:mmInfo
        (local.get $7)
        (local.get $2)
       )
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:rtSize
     (i32.sub
      (local.get $1)
      (i32.const 4)
     )
     (local.get $3)
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.get $5)
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const 16)
       )
      )
     )
     (i32.sub
      (local.get $3)
      (local.get $5)
     )
    )
    (if
     (i32.ne
      (local.get $1)
      (local.get $9)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $1)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $3)
    )
   )
  )
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  (local.set $4
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 42)
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
  (if
   (i32.gt_u
    (local.get $4)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $6
      (i32.shl
       (select
        (local.get $4)
        (i32.const 8)
        (i32.gt_u
         (local.get $4)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $5)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $7)
    )
    (block
     (local.set $6
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
       (local.get $3)
       (i32.load offset=12
        (local.tee $4
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $4)
        (local.tee $1
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $4)
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
      (local.get $4)
      (local.get $3)
      (local.get $6)
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
       (local.tee $3
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
    (local.get $3)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
    (block $case8
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
               (i32.const 25)
              )
              (i32.eq
               (local.get $2)
               (i32.const 34)
              )
             )
            )
            (br_if $case3
             (i32.eq
              (local.get $2)
              (i32.const 35)
             )
            )
            (br_if $case4
             (i32.eq
              (local.get $2)
              (i32.const 36)
             )
            )
            (br_if $case5
             (i32.eq
              (local.get $2)
              (i32.const 37)
             )
            )
            (br_if $case6
             (i32.eq
              (local.get $2)
              (i32.const 40)
             )
            )
            (br_if $case7
             (i32.eq
              (local.get $2)
              (i32.const 43)
             )
            )
            (br_if $case8
             (i32.eq
              (local.get $2)
              (i32.const 5)
             )
            )
            (br $default)
           )
          )
          (return
           (call $liquidation/assembly/liquidation.contract/LiquidationQueue#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $liquidation/assembly/liquidation.contract/enqueueAction#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $liquidation/assembly/liquidation.contract/absorbAction#unpack
          (local.get $0)
          (local.get $1)
         )
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
       (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:scope
        (local.get $0)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (local.get $1)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<liquidation/assembly/liquidation.contract/LiquidationQueue>#set:table
        (local.get $0)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (local.get $1)
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
   (unreachable)
  )
  (call $liquidation/assembly/liquidation.contract/LiqConfig#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
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
                (i32.const 34)
               )
              )
              (br_if $case3
               (i32.eq
                (local.get $1)
                (i32.const 35)
               )
              )
              (br_if $case4
               (i32.eq
                (local.get $1)
                (i32.const 36)
               )
              )
              (br_if $case5
               (i32.eq
                (local.get $1)
                (i32.const 37)
               )
              )
              (br_if $case6
               (i32.eq
                (local.get $1)
                (i32.const 40)
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
                (i32.const 5)
               )
              )
              (br $default)
             )
            )
            (return
             (call $liquidation/assembly/liquidation.contract/LiquidationQueue#pack
              (local.get $0)
             )
            )
           )
           (return
            (call $liquidation/assembly/liquidation.contract/LiqConfig#pack
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
           (i32.const 40)
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
         (br $folding-inner0)
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
       (return
        (call $shared/inline/AbsorbAction#pack
         (local.get $0)
        )
       )
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
   (unreachable)
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
   (i32.const 4668)
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
