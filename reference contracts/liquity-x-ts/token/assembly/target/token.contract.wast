(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
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
 (import "env" "has_auth" (func $~lib/as-chain/env/has_auth (param i64) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $token/assembly/token.contract/AccountDB i32 (i32.const 7))
 (global $token/assembly/token.contract/Account i32 (i32.const 8))
 (global $token/assembly/token.contract/CurrencyStatsDB i32 (i32.const 26))
 (global $token/assembly/token.contract/CurrencyStats i32 (i32.const 27))
 (global $token/assembly/token.contract/TokenConfigDB i32 (i32.const 31))
 (global $token/assembly/token.contract/TokenConfig i32 (i32.const 32))
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
 (data (i32.const 2268) "<")
 (data (i32.const 2280) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2332) "L")
 (data (i32.const 2344) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2412) "<")
 (data (i32.const 2424) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2476) "<")
 (data (i32.const 2488) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2552) "\01")
 (data (i32.const 2572) "\\")
 (data (i32.const 2584) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2668) "<")
 (data (i32.const 2680) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 2732) "l")
 (data (i32.const 2744) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 2844) "L")
 (data (i32.const 2856) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2924) "L")
 (data (i32.const 2936) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3004) "<")
 (data (i32.const 3016) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3068) "L")
 (data (i32.const 3080) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3148) "<")
 (data (i32.const 3160) "\01\00\00\00,\00\00\00g\00e\00t\00I\00d\00x\00D\00B\00:\00 \00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3212) "\\")
 (data (i32.const 3224) "\01\00\00\00J\00\00\00i\00d\00x\00U\00p\00d\00a\00t\00e\00:\00 \00v\00a\00l\00u\00e\00 \00b\00y\00 \00p\00r\00i\00m\00a\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3404) "\1c")
 (data (i32.const 3436) "L")
 (data (i32.const 3448) "\01\00\00\00:\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00t\00o\00k\00e\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t")
 (data (i32.const 3516) "<")
 (data (i32.const 3528) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00a\00x\00_\00s\00u\00p\00p\00l\00y")
 (data (i32.const 3580) "<")
 (data (i32.const 3592) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 3644) "<")
 (data (i32.const 3656) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00a\00m\00o\00u\00n\00t")
 (data (i32.const 3708) "<")
 (data (i32.const 3720) "\01\00\00\00*\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00i\00s\00s\00u\00e\00 \00a\00u\00t\00h")
 (data (i32.const 3772) "<")
 (data (i32.const 3784) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 3836) ",")
 (data (i32.const 3848) "\01\00\00\00\1c\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00a\00x")
 (data (i32.const 3884) "<")
 (data (i32.const 3896) "\01\00\00\00,\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00r\00e\00t\00i\00r\00e\00 \00a\00u\00t\00h")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00\"\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00s\00u\00p\00p\00l\00y")
 (data (i32.const 4012) "<")
 (data (i32.const 4024) "\01\00\00\00$\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 4076) "<")
 (data (i32.const 4088) "\01\00\00\00&\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00o\00v\00e\00r\00d\00r\00a\00w")
 (data (i32.const 4140) "<")
 (data (i32.const 4152) "\01\00\00\00$\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00t\00o\00 \00s\00e\00l\00f")
 (data (i32.const 4204) "<")
 (data (i32.const 4216) "\01\00\00\00\1e\00\00\00l\00i\00q\00u\00i\00t\00y\00-\00x\00:\00 \00m\00e\00m\00o")
 (data (i32.const 4268) "\1c")
 (data (i32.const 4300) "L")
 (data (i32.const 4312) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4380) "\1c")
 (data (i32.const 4392) "/\00\00\00\0c\00\00\00\e0\10\00\00\00\00\00\00\00\n")
 (data (i32.const 4412) "\1c")
 (data (i32.const 4424) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4444) "\\")
 (data (i32.const 4456) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4540) ",")
 (data (i32.const 4552) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 4588) ",")
 (data (i32.const 4600) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 4636) "\1c")
 (data (i32.const 4648) "/\00\00\00\0c\00\00\00\d0\11\00\00\00\00\00\00\00\12")
 (data (i32.const 4668) "\1c")
 (data (i32.const 4700) "\1c")
 (data (i32.const 4712) "/\00\00\00\0c\00\00\00\e0\10\00\00\00\00\00\00\00\n")
 (data (i32.const 4732) "\1c")
 (data (i32.const 4744) "/\00\00\00\0c\00\00\00\d0\11\00\00\00\00\00\00\00\12")
 (data (i32.const 4764) "\1c")
 (data (i32.const 4796) "\1c")
 (data (i32.const 4808) "/\00\00\00\0c\00\00\00\e0\10\00\00\00\00\00\00\00\n")
 (data (i32.const 4828) "\1c")
 (data (i32.const 4840) "/\00\00\00\0c\00\00\00\d0\11\00\00\00\00\00\00\00\12")
 (data (i32.const 4860) ",")
 (data (i32.const 4872) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 4908) ",")
 (data (i32.const 4920) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (export "AccountDB" (global $token/assembly/token.contract/AccountDB))
 (export "AccountDB#get:db" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "AccountDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "AccountDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs))
 (export "AccountDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "AccountDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:nextPrimaryKey))
 (export "AccountDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope))
 (export "AccountDB#constructor" (func $token/assembly/token.contract/AccountDB#constructor@varargs))
 (export "AccountDB#set" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#set))
 (export "AccountDB#store" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#store))
 (export "AccountDB#update" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#update))
 (export "AccountDB#remove" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#remove))
 (export "AccountDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#removeEx))
 (export "AccountDB#get" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get))
 (export "AccountDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getByKey))
 (export "AccountDB#next" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#next))
 (export "AccountDB#previous" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#previous))
 (export "AccountDB#find" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find))
 (export "AccountDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireFind@varargs))
 (export "AccountDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireNotFind@varargs))
 (export "AccountDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#lowerBound))
 (export "AccountDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#upperBound))
 (export "AccountDB#begin" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#begin))
 (export "AccountDB#end" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#end))
 (export "AccountDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getIdxDB))
 (export "AccountDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#idxUpdate))
 (export "AccountDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#availablePrimaryKey))
 (export "Account" (global $token/assembly/token.contract/Account))
 (export "Account#pack" (func $token/assembly/token.contract/Account#pack))
 (export "Account#unpack" (func $token/assembly/token.contract/Account#unpack))
 (export "Account#getSize" (func $token/assembly/token.contract/Account#getSize))
 (export "Account#getPrimaryValue" (func $token/assembly/token.contract/Account#getPrimaryValue))
 (export "Account#getSecondaryValue" (func $token/assembly/token.contract/Account#getSecondaryValue))
 (export "Account#setSecondaryValue" (func $token/assembly/token.contract/Account#setSecondaryValue))
 (export "Account#get:balance" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "Account#set:balance" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "Account#constructor" (func $token/assembly/token.contract/Account#constructor@varargs))
 (export "Account#get:primary" (func $token/assembly/token.contract/Account#get:primary))
 (export "Account#getTableName" (func $token/assembly/token.contract/Account#getTableName))
 (export "Account#getTableIndexes" (func $token/assembly/token.contract/Account#getTableIndexes))
 (export "Account.get:tableName" (func $token/assembly/token.contract/Account.get:tableName))
 (export "Account.tableIndexes" (func $token/assembly/token.contract/Account.tableIndexes))
 (export "Account.new" (func $token/assembly/token.contract/Account.new@varargs))
 (export "CurrencyStatsDB" (global $token/assembly/token.contract/CurrencyStatsDB))
 (export "CurrencyStatsDB#get:db" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "CurrencyStatsDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "CurrencyStatsDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs))
 (export "CurrencyStatsDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "CurrencyStatsDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:nextPrimaryKey))
 (export "CurrencyStatsDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope))
 (export "CurrencyStatsDB#constructor" (func $token/assembly/token.contract/CurrencyStatsDB#constructor@varargs))
 (export "CurrencyStatsDB#set" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#set))
 (export "CurrencyStatsDB#store" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#store))
 (export "CurrencyStatsDB#update" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#update))
 (export "CurrencyStatsDB#remove" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#remove))
 (export "CurrencyStatsDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#removeEx))
 (export "CurrencyStatsDB#get" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get))
 (export "CurrencyStatsDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#getByKey))
 (export "CurrencyStatsDB#next" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#next))
 (export "CurrencyStatsDB#previous" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#previous))
 (export "CurrencyStatsDB#find" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find))
 (export "CurrencyStatsDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireFind@varargs))
 (export "CurrencyStatsDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireNotFind@varargs))
 (export "CurrencyStatsDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#lowerBound))
 (export "CurrencyStatsDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#upperBound))
 (export "CurrencyStatsDB#begin" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#begin))
 (export "CurrencyStatsDB#end" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#end))
 (export "CurrencyStatsDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getIdxDB))
 (export "CurrencyStatsDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#idxUpdate))
 (export "CurrencyStatsDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#availablePrimaryKey))
 (export "CurrencyStats" (global $token/assembly/token.contract/CurrencyStats))
 (export "CurrencyStats#pack" (func $token/assembly/token.contract/CurrencyStats#pack))
 (export "CurrencyStats#unpack" (func $token/assembly/token.contract/CurrencyStats#unpack))
 (export "CurrencyStats#getSize" (func $token/assembly/token.contract/CurrencyStats#getSize))
 (export "CurrencyStats#getPrimaryValue" (func $token/assembly/token.contract/Account#getPrimaryValue))
 (export "CurrencyStats#getSecondaryValue" (func $token/assembly/token.contract/Account#getSecondaryValue))
 (export "CurrencyStats#setSecondaryValue" (func $token/assembly/token.contract/Account#setSecondaryValue))
 (export "CurrencyStats#get:supply" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "CurrencyStats#set:supply" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "CurrencyStats#get:max_supply" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs))
 (export "CurrencyStats#set:max_supply" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "CurrencyStats#get:issuer" (func $token/assembly/token.contract/CurrencyStats#get:issuer))
 (export "CurrencyStats#set:issuer" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "CurrencyStats#constructor" (func $token/assembly/token.contract/CurrencyStats#constructor@varargs))
 (export "CurrencyStats#get:primary" (func $token/assembly/token.contract/Account#get:primary))
 (export "CurrencyStats#getTableName" (func $token/assembly/token.contract/CurrencyStats#getTableName))
 (export "CurrencyStats#getTableIndexes" (func $token/assembly/token.contract/CurrencyStats#getTableIndexes))
 (export "CurrencyStats.get:tableName" (func $token/assembly/token.contract/CurrencyStats.get:tableName))
 (export "CurrencyStats.tableIndexes" (func $token/assembly/token.contract/CurrencyStats.tableIndexes))
 (export "CurrencyStats.new" (func $token/assembly/token.contract/CurrencyStats.new@varargs))
 (export "TokenConfigDB" (global $token/assembly/token.contract/TokenConfigDB))
 (export "TokenConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "TokenConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "TokenConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs))
 (export "TokenConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "TokenConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:nextPrimaryKey))
 (export "TokenConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope))
 (export "TokenConfigDB#constructor" (func $token/assembly/token.contract/TokenConfigDB#constructor@varargs))
 (export "TokenConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#set))
 (export "TokenConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#store))
 (export "TokenConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#update))
 (export "TokenConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#remove))
 (export "TokenConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#removeEx))
 (export "TokenConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#get))
 (export "TokenConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#getByKey))
 (export "TokenConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#next))
 (export "TokenConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#previous))
 (export "TokenConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find))
 (export "TokenConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#requireFind@varargs))
 (export "TokenConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#requireNotFind@varargs))
 (export "TokenConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#lowerBound))
 (export "TokenConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#upperBound))
 (export "TokenConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#begin))
 (export "TokenConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#end))
 (export "TokenConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getIdxDB))
 (export "TokenConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#idxUpdate))
 (export "TokenConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#availablePrimaryKey))
 (export "TokenConfig" (global $token/assembly/token.contract/TokenConfig))
 (export "TokenConfig#pack" (func $token/assembly/token.contract/TokenConfig#pack))
 (export "TokenConfig#unpack" (func $token/assembly/token.contract/TokenConfig#unpack))
 (export "TokenConfig#getSize" (func $token/assembly/token.contract/TokenConfig#getSize))
 (export "TokenConfig#getPrimaryValue" (func $token/assembly/token.contract/TokenConfig#getPrimaryValue))
 (export "TokenConfig#getSecondaryValue" (func $token/assembly/token.contract/Account#getSecondaryValue))
 (export "TokenConfig#setSecondaryValue" (func $token/assembly/token.contract/Account#setSecondaryValue))
 (export "TokenConfig#get:admin" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db))
 (export "TokenConfig#set:admin" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "TokenConfig#get:debt_contract" (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs))
 (export "TokenConfig#set:debt_contract" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "TokenConfig#constructor" (func $token/assembly/token.contract/TokenConfig#constructor@varargs))
 (export "TokenConfig#getTableName" (func $token/assembly/token.contract/TokenConfig#getTableName))
 (export "TokenConfig#getTableIndexes" (func $token/assembly/token.contract/TokenConfig#getTableIndexes))
 (export "TokenConfig.get:tableName" (func $token/assembly/token.contract/TokenConfig.get:tableName))
 (export "TokenConfig.tableIndexes" (func $token/assembly/token.contract/TokenConfig.tableIndexes))
 (export "TokenConfig.new" (func $token/assembly/token.contract/TokenConfig.new@varargs))
 (export "apply" (func $token/assembly/token.contract/apply))
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
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 13)
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
       (i32.const 14)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
 (func $token/assembly/token.contract/AccountDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/asset/Symbol#code (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load
    (local.get $0)
   )
   (i64.const 8)
  )
 )
 (func $token/assembly/token.contract/Account#get:primary (param $0 i32) (result i64)
  (call $~lib/as-chain/asset/Symbol#code
   (i32.load offset=8
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $token/assembly/token.contract/Account#getPrimaryValue (param $0 i32) (result i64)
  (call $token/assembly/token.contract/Account#get:primary
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 17)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk (param $0 i32) (result i32)
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
       (i32.const 18)
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
 (func $token/assembly/token.contract/Account#constructor (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 4)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 11)
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
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
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
      (i32.const 12)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/system/check
    (i32.le_s
     (call $~lib/string/String#get:length
      (i32.const 2560)
     )
     (i32.const 7)
    )
    (i32.const 2432)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
   (loop $for-loop|0
    (if
     (i32.gt_s
      (call $~lib/string/String#get:length
       (i32.const 2560)
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
                   (i32.const 2560)
                  )
                  (i32.const 1)
                 )
                 (local.get $1)
                )
               )
               (call $~lib/string/String#get:length
                (i32.const 2560)
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
              (i32.const 2560)
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
       (i32.const 2496)
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
  (call $~lib/as-chain/asset/Asset#constructor
   (local.get $0)
  )
 )
 (func $token/assembly/token.contract/Account#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $1
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $token/assembly/token.contract/Account#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
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
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
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
    (i32.const 2592)
   )
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
 (func $token/assembly/token.contract/Account#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $token/assembly/token.contract/Account#unpack
    (local.tee $0
     (call $token/assembly/token.contract/Account#constructor@varargs
      (i32.const 0)
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
     (i32.const 21)
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
 (func $token/assembly/token.contract/Account#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 16)
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
    (i32.const 2944)
   )
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
    (i32.const 2864)
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
 (func $token/assembly/token.contract/Account#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $token/assembly/token.contract/Account#getSize
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
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $token/assembly/token.contract/Account#pack
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
 (func $token/assembly/token.contract/Account#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3024)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 25)
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
     (i32.const 24)
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.get $1)
   )
   (i32.const 2288)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $token/assembly/token.contract/Account#get:primary
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
       (local.get $1)
      )
      (i32.const 2352)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
      (local.get $1)
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#update
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
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
       (call $token/assembly/token.contract/Account#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $token/assembly/token.contract/Account#get:primary
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
     (call $token/assembly/token.contract/Account#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $1)
      )
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
     (call $token/assembly/token.contract/Account#get:primary
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
      (local.get $0)
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#get
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
  (call $token/assembly/token.contract/Account#constructor@varargs
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#remove (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#removeEx
   (local.get $0)
   (call $token/assembly/token.contract/Account#get:primary
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 3168)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $token/assembly/token.contract/Account#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3024)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $token/assembly/token.contract/Account#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#update
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (call $token/assembly/token.contract/Account#get:primary
        (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#end
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
      (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $token/assembly/token.contract/Account.get:tableName (result i32)
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
   (i64.const 3607749779137757184)
  )
  (local.get $0)
 )
 (func $token/assembly/token.contract/Account.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $token/assembly/token.contract/Account.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3328)
  )
 )
 (func $token/assembly/token.contract/Account#getTableName (param $0 i32) (result i32)
  (call $token/assembly/token.contract/Account.get:tableName)
 )
 (func $token/assembly/token.contract/Account#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $token/assembly/token.contract/Account.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 28)
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
       (i32.const 29)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
 (func $token/assembly/token.contract/CurrencyStatsDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 26)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $token/assembly/token.contract/CurrencyStats#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 27)
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
 (func $token/assembly/token.contract/CurrencyStats#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $1
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (local.set $3
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $token/assembly/token.contract/CurrencyStats#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $token/assembly/token.contract/CurrencyStats#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $token/assembly/token.contract/CurrencyStats#unpack
    (local.tee $0
     (call $token/assembly/token.contract/CurrencyStats#constructor@varargs
      (i32.const 0)
      (i32.const 0)
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $token/assembly/token.contract/CurrencyStats#getSize (param $0 i32) (result i32)
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
  (i32.const 40)
 )
 (func $token/assembly/token.contract/CurrencyStats#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $token/assembly/token.contract/CurrencyStats#getSize
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
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $token/assembly/token.contract/CurrencyStats#pack
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.get $1)
   )
   (i32.const 2288)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $token/assembly/token.contract/Account#get:primary
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
       (local.get $1)
      )
      (i32.const 2352)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#getEx
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
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
      (local.get $1)
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#update
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
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
       (call $token/assembly/token.contract/Account#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $token/assembly/token.contract/Account#get:primary
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
     (call $token/assembly/token.contract/CurrencyStats#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $1)
      )
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
     (call $token/assembly/token.contract/Account#get:primary
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
      (local.get $0)
      (call $token/assembly/token.contract/Account#get:primary
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#get
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
  (call $token/assembly/token.contract/CurrencyStats#constructor@varargs
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#removeEx
   (local.get $0)
   (call $token/assembly/token.contract/Account#get:primary
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/CurrencyStats>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $token/assembly/token.contract/Account#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/CurrencyStats>#update
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (call $token/assembly/token.contract/Account#get:primary
        (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#end
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
      (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $token/assembly/token.contract/CurrencyStats.get:tableName (result i32)
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
   (i64.const -4157508551318700032)
  )
  (local.get $0)
 )
 (func $token/assembly/token.contract/CurrencyStats.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $token/assembly/token.contract/CurrencyStats.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3360)
  )
 )
 (func $token/assembly/token.contract/CurrencyStats#get:issuer (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $token/assembly/token.contract/CurrencyStats#getTableName (param $0 i32) (result i32)
  (call $token/assembly/token.contract/CurrencyStats.get:tableName)
 )
 (func $token/assembly/token.contract/CurrencyStats#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $token/assembly/token.contract/CurrencyStats.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
       (i32.const 33)
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
       (i32.const 34)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
 (func $token/assembly/token.contract/TokenConfig#getPrimaryValue (param $0 i32) (result i64)
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
   (i64.const -3879510533170266112)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $token/assembly/token.contract/TokenConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 32)
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
  (local.get $0)
 )
 (func $token/assembly/token.contract/TokenConfig#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $token/assembly/token.contract/TokenConfig#unpack
    (local.tee $0
     (call $token/assembly/token.contract/TokenConfig#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $token/assembly/token.contract/TokenConfig#getSize (param $0 i32) (result i32)
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
  (i32.const 16)
 )
 (func $token/assembly/token.contract/TokenConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $token/assembly/token.contract/TokenConfig#getSize
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $token/assembly/token.contract/TokenConfig#pack
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.get $1)
   )
   (i32.const 2288)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
       (local.get $1)
      )
      (i32.const 2352)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:table
      (local.get $1)
      (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#update
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
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
       (call $token/assembly/token.contract/Account#getSecondaryValue
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
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
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
     (call $token/assembly/token.contract/TokenConfig#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
      (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
       (local.get $1)
      )
      (call $token/assembly/token.contract/Account#getSecondaryValue
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
     (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
      (local.get $0)
      (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#get
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
  (call $token/assembly/token.contract/TokenConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#remove
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#removeEx
   (local.get $0)
   (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
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
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#next (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#previous (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#constructor
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $token/assembly/token.contract/Account#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/TokenConfig>#update
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#availablePrimaryKey (param $0 i32) (result i64)
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
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $token/assembly/token.contract/TokenConfig#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
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
 (func $token/assembly/token.contract/TokenConfig.get:tableName (result i32)
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
   (i64.const -3879510533170266112)
  )
  (local.get $0)
 )
 (func $token/assembly/token.contract/TokenConfig.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $token/assembly/token.contract/TokenConfig.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3392)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 16)
     (i32.const 3424)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $token/assembly/token.contract/TokenConfig#getTableName (param $0 i32) (result i32)
  (call $token/assembly/token.contract/TokenConfig.get:tableName)
 )
 (func $token/assembly/token.contract/TokenConfig#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $token/assembly/token.contract/TokenConfig.tableIndexes
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<token/assembly/token.contract/TokenConfig>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/TokenConfig>#getValue
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
  (call $token/assembly/token.contract/TokenConfig#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $token/assembly/token.contract/createAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
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
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $4
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
   (local.set $2
    (i32.or
     (local.get $2)
     (i32.shl
      (i32.and
       (local.get $4)
       (i32.const 127)
      )
      (local.get $1)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 7)
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $4)
     (i32.const 128)
    )
   )
  )
  (local.set $1
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $2)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.tee $0
    (i32.load
     (local.get $1)
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $token/assembly/token.contract/issueAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/hasAuth (param $0 i32) (result i32)
  (call $~lib/as-chain/env/has_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 3792)
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $token/assembly/token.contract/Account#get:primary
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 44)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (local.set $3
   (call $token/assembly/token.contract/Account#constructor@varargs
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#constructor
    (i32.const 0)
    (local.get $0)
    (local.get $1)
    (call $token/assembly/token.contract/Account.get:tableName)
    (call $token/assembly/token.contract/Account#getTableIndexes
     (local.get $3)
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $token/assembly/token.contract/Account#get:primary
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $token/assembly/token.contract/TokenContract#addBalance (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (local.set $3
   (call $~lib/as-chain/asset/Symbol#code
    (i32.load offset=8
     (local.get $2)
    )
   )
  )
  (if
   (local.tee $4
    (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#getByKey
     (i32.load
      (local.get $1)
     )
     (local.get $3)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (i32.load
         (local.get $4)
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
     (i32.const 3792)
    )
    (call $~lib/as-chain/name/Name#set:N
     (i32.load
      (local.get $4)
     )
     (i64.add
      (i64.load
       (i32.load
        (local.get $4)
       )
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#update
     (local.get $1)
     (local.get $4)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $2
     (call $token/assembly/token.contract/Account#constructor
      (i32.const 0)
      (local.get $2)
     )
    )
    (local.set $0
     (i32.load
      (local.get $0)
     )
    )
    (local.set $3
     (call $token/assembly/token.contract/Account#get:primary
      (local.get $2)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireNotFind
      (i32.load
       (local.get $1)
      )
      (local.get $3)
      (i32.const 1200)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#store
      (i32.load
       (local.get $1)
      )
      (local.get $2)
      (local.get $0)
     )
    )
    (if
     (i64.ge_u
      (local.get $3)
      (i64.load offset=8
       (local.get $1)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
      (local.get $1)
      (select
       (i64.const -2)
       (i64.add
        (local.get $3)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $3)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $token/assembly/token.contract/retireAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $token/assembly/token.contract/TokenContract#subBalance (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (block (result i32)
    (local.set $4
     (call $~lib/as-chain/asset/Symbol#code
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#find
        (i32.load
         (local.get $1)
        )
        (local.get $4)
       )
      )
     )
     (i32.const 4032)
    )
    (i64.ge_s
     (i64.load
      (i32.load
       (local.tee $3
        (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#get
         (i32.load
          (local.get $1)
         )
         (local.get $3)
        )
       )
      )
     )
     (i64.load
      (local.get $2)
     )
    )
   )
   (i32.const 4096)
  )
  (call $~lib/as-chain/name/Name#set:N
   (i32.load
    (local.get $3)
   )
   (i64.sub
    (i64.load
     (i32.load
      (local.get $3)
     )
    )
    (i64.load
     (local.get $2)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/Account>#update
   (local.get $1)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $token/assembly/token.contract/transferAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $token/assembly/token.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
        (i32.const 37)
       )
      )
     )
     (local.set $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 38)
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
     (i32.const 39)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
   (local.get $6)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (local.set $7
   (call $token/assembly/token.contract/CurrencyStats#constructor@varargs
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $5)
    (call $token/assembly/token.contract/CurrencyStats.get:tableName)
    (call $token/assembly/token.contract/CurrencyStats#getTableIndexes
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
     (i32.const 40)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (i32.const 0)
  )
  (drop
   (call $token/assembly/token.contract/TokenConfig#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (i64.load
    (local.tee $7
     (call $token/assembly/token.contract/TokenConfig.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor@varargs
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
     (local.tee $6
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
         (i32.const 8)
         (i32.const 41)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $token/assembly/token.contract/TokenConfig#unpack
        (local.get $5)
        (local.get $6)
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
        (local.tee $7
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $3)
      )
      (call $~lib/as-chain/system/check
       (i64.eqz
        (i64.load
         (i32.load
          (call $~lib/proton-tsc/modules/store/singleton/Singleton<token/assembly/token.contract/TokenConfig>#get
           (i32.load offset=16
            (local.get $4)
           )
          )
         )
        )
       )
       (i32.const 3456)
      )
      (local.set $5
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $3
       (call $token/assembly/token.contract/TokenConfig#constructor
        (i32.const 0)
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
        (local.tee $8
         (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
          (i32.load offset=8
           (local.get $5)
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $8)
        (local.get $3)
        (local.get $7)
       )
       (drop
        (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#store
         (i32.load offset=8
          (local.get $5)
         )
         (local.get $3)
         (local.get $7)
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 5031766152489992192)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 42)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $5)
       (i32.const 0)
      )
      (drop
       (call $token/assembly/token.contract/createAction#unpack
        (local.get $5)
        (local.get $6)
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
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<token/assembly/token.contract/TokenConfig>#get
         (i32.load offset=16
          (local.get $4)
         )
        )
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $7)
      )
      (call $~lib/as-chain/system/check
       (i64.gt_s
        (i64.load
         (local.get $5)
        )
        (i64.const 0)
       )
       (i32.const 3536)
      )
      (local.set $3
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $0
       (call $~lib/as-chain/asset/Symbol#code
        (i32.load offset=8
         (local.get $5)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
         (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#find
          (i32.load
           (local.get $3)
          )
          (local.get $0)
         )
        )
       )
       (i32.const 3600)
      )
      (local.set $3
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $5
       (call $token/assembly/token.contract/CurrencyStats#constructor
        (i32.const 0)
        (call $~lib/as-chain/asset/Asset#constructor
         (i32.load offset=8
          (local.get $5)
         )
        )
        (local.get $5)
        (local.get $7)
       )
      )
      (local.set $7
       (i32.load
        (local.get $4)
       )
      )
      (local.set $0
       (call $token/assembly/token.contract/Account#get:primary
        (local.get $5)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireNotFind
        (i32.load
         (local.get $3)
        )
        (local.get $0)
        (i32.const 1200)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#store
        (i32.load
         (local.get $3)
        )
        (local.get $5)
        (local.get $7)
       )
      )
      (if
       (i64.ge_u
        (local.get $0)
        (i64.load offset=8
         (local.get $3)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<token/assembly/token.contract/Account>#set:scope
        (local.get $3)
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
      (i64.const 8516769789752901632)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 43)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 2560)
      )
      (drop
       (call $token/assembly/token.contract/issueAction#unpack
        (local.get $3)
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (drop
       (i32.load offset=8
        (local.get $3)
       )
      )
      (call $~lib/as-chain/system/check
       (i64.gt_s
        (i64.load
         (local.get $5)
        )
        (i64.const 0)
       )
       (i32.const 3664)
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (call $~lib/as-chain/action/hasAuth
         (i32.load offset=4
          (local.tee $3
           (call $~lib/proton-tsc/modules/store/singleton/Singleton<token/assembly/token.contract/TokenConfig>#get
            (i32.load offset=16
             (local.get $4)
            )
           )
          )
         )
        )
        (i32.const 1)
        (call $~lib/as-chain/action/hasAuth
         (i32.load
          (local.get $3)
         )
        )
       )
       (i32.const 3728)
      )
      (local.set $3
       (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#requireGet
        (i32.load offset=12
         (local.get $4)
        )
        (call $~lib/as-chain/asset/Symbol#code
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.get $5)
         )
        )
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $3)
          )
         )
        )
       )
       (i32.const 3792)
      )
      (call $~lib/as-chain/name/Name#set:N
       (i32.load
        (local.get $3)
       )
       (i64.add
        (i64.load
         (i32.load
          (local.get $3)
         )
        )
        (i64.load
         (local.get $5)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (i64.load
         (i32.load
          (local.get $3)
         )
        )
        (i64.load
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (i32.const 3856)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $3)
       (i32.load
        (local.get $4)
       )
      )
      (call $token/assembly/token.contract/TokenContract#addBalance
       (local.get $4)
       (local.get $7)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4993669930013425664)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 45)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 2560)
      )
      (drop
       (call $token/assembly/token.contract/retireAction#unpack
        (local.get $3)
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (drop
       (i32.load offset=4
        (local.get $3)
       )
      )
      (call $~lib/as-chain/system/check
       (i64.gt_s
        (i64.load
         (local.get $5)
        )
        (i64.const 0)
       )
       (i32.const 3664)
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (call $~lib/as-chain/action/hasAuth
         (i32.load offset=4
          (local.tee $3
           (call $~lib/proton-tsc/modules/store/singleton/Singleton<token/assembly/token.contract/TokenConfig>#get
            (i32.load offset=16
             (local.get $4)
            )
           )
          )
         )
        )
        (i32.const 1)
        (call $~lib/as-chain/action/hasAuth
         (i32.load
          (local.get $3)
         )
        )
       )
       (i32.const 3904)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (i64.load
         (i32.load
          (local.tee $3
           (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#requireGet
            (i32.load offset=12
             (local.get $4)
            )
            (call $~lib/as-chain/asset/Symbol#code
             (i32.load offset=8
              (local.get $5)
             )
            )
           )
          )
         )
        )
        (i64.load
         (local.get $5)
        )
       )
       (i32.const 3968)
      )
      (call $token/assembly/token.contract/TokenContract#subBalance
       (local.get $4)
       (i32.load
        (local.get $4)
       )
       (local.get $5)
      )
      (call $~lib/as-chain/name/Name#set:N
       (i32.load
        (local.get $3)
       )
       (i64.sub
        (i64.load
         (i32.load
          (local.get $3)
         )
        )
        (i64.load
         (local.get $5)
        )
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<token/assembly/token.contract/CurrencyStats>#update
       (i32.load offset=12
        (local.get $4)
       )
       (local.get $3)
       (i32.load
        (local.get $4)
       )
      )
     )
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
         (i32.const 46)
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
       (i32.const 2560)
      )
      (drop
       (call $token/assembly/token.contract/transferAction#unpack
        (local.get $5)
        (local.get $6)
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
        (local.tee $6
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (local.set $5
       (i32.load offset=12
        (local.get $5)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $3)
      )
      (call $~lib/as-chain/system/check
       (i64.ne
        (i64.load
         (local.get $3)
        )
        (i64.load
         (local.get $7)
        )
       )
       (i32.const 4160)
      )
      (call $~lib/as-chain/system/check
       (i64.gt_s
        (i64.load
         (local.get $6)
        )
        (i64.const 0)
       )
       (i32.const 3664)
      )
      (call $~lib/as-chain/system/check
       (i32.le_s
        (call $~lib/string/String#get:length
         (local.get $5)
        )
        (i32.const 256)
       )
       (i32.const 4224)
      )
      (call $token/assembly/token.contract/TokenContract#subBalance
       (local.get $4)
       (local.get $3)
       (local.get $6)
      )
      (call $token/assembly/token.contract/TokenContract#addBalance
       (local.get $4)
       (local.get $7)
       (local.get $6)
      )
     )
    )
   )
  )
 )
 (func $token/assembly/token.contract/AccountDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 16)
     (i32.const 4288)
    )
   )
  )
  (call $token/assembly/token.contract/AccountDB#constructor
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
    (i32.const 4432)
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
      (i32.const 2560)
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
     (i32.const 2560)
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
      (i32.const 2560)
     )
    )
   )
   (local.set $0
    (i32.const 2560)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2560)
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
         (i32.const 2560)
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
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4400)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4400)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/Account>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $token/assembly/token.contract/Account.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $token/assembly/token.contract/AccountDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $token/assembly/token.contract/Account.get:tableName)
   (call $token/assembly/token.contract/Account.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $token/assembly/token.contract/CurrencyStatsDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 16)
     (i32.const 4688)
    )
   )
  )
  (call $token/assembly/token.contract/CurrencyStatsDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4720)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4720)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4752)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4752)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/CurrencyStats>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $token/assembly/token.contract/CurrencyStats.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
  (call $token/assembly/token.contract/CurrencyStatsDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $token/assembly/token.contract/CurrencyStats.get:tableName)
   (call $token/assembly/token.contract/CurrencyStats.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $token/assembly/token.contract/TokenConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (i32.const 16)
     (i32.const 4784)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 31)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4816)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4816)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
    (i32.const 4848)
    (call $~lib/util/number/utoa64
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 4848)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<token/assembly/token.contract/Account>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#find
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
 (func $token/assembly/token.contract/TokenConfig#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (local.set $1
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (local.set $2
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $token/assembly/token.contract/TokenConfig#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $token/assembly/token.contract/TokenConfig.new@varargs (param $0 i32) (param $1 i32) (result i32)
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
   (call $token/assembly/token.contract/TokenConfig.get:tableName)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 36)
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
   (call $~lib/as-chain/mi/MultiIndex<token/assembly/token.contract/TokenConfig>#constructor@varargs
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
  )
  (local.get $2)
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
       (call $~lib/as-chain/asset/Symbol#code
        (local.get $0)
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
  (block $folding-inner0
   (block $default
    (block $case10
     (block $case9
      (block $case8
       (block $case7
        (block $case6
         (block $case5
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
                (i32.const 27)
               )
              )
              (br_if $folding-inner0
               (i32.or
                (i32.eq
                 (local.get $2)
                 (i32.const 32)
                )
                (i32.eq
                 (local.get $2)
                 (i32.const 41)
                )
               )
              )
              (br_if $case4
               (i32.eq
                (local.get $2)
                (i32.const 42)
               )
              )
              (br_if $case5
               (i32.eq
                (local.get $2)
                (i32.const 43)
               )
              )
              (br_if $case6
               (i32.eq
                (local.get $2)
                (i32.const 45)
               )
              )
              (br_if $case7
               (i32.eq
                (local.get $2)
                (i32.const 46)
               )
              )
              (br_if $case8
               (i32.eq
                (local.get $2)
                (i32.const 5)
               )
              )
              (br_if $case9
               (i32.eq
                (local.get $2)
                (i32.const 12)
               )
              )
              (br_if $case10
               (i32.eq
                (local.get $2)
                (i32.const 11)
               )
              )
              (br $default)
             )
            )
            (return
             (call $token/assembly/token.contract/Account#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (return
            (call $token/assembly/token.contract/CurrencyStats#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (return
           (call $token/assembly/token.contract/createAction#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $token/assembly/token.contract/issueAction#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $token/assembly/token.contract/retireAction#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $token/assembly/token.contract/transferAction#unpack
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
      (i32.const 4880)
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
     (i32.const 4928)
    )
    (return
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (unreachable)
  )
  (call $token/assembly/token.contract/TokenConfig#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $2
     (call $~lib/string/String.UTF8.encode
      (local.get $0)
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
    (local.tee $1
     (i32.shr_u
      (local.get $1)
      (i32.const 7)
     )
    )
   )
  )
  (i32.add
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $2)
   )
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (loop $while-continue|0
   (local.set $3
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
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (select
     (i32.or
      (local.tee $3
       (i32.and
        (local.get $2)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $3)
     (local.tee $2
      (i32.shr_u
       (local.get $2)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
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
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
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
                  (i32.const 27)
                 )
                )
                (br_if $case2
                 (i32.eq
                  (local.get $1)
                  (i32.const 32)
                 )
                )
                (br_if $case3
                 (i32.eq
                  (local.get $1)
                  (i32.const 41)
                 )
                )
                (br_if $case4
                 (i32.eq
                  (local.get $1)
                  (i32.const 42)
                 )
                )
                (br_if $case5
                 (i32.eq
                  (local.get $1)
                  (i32.const 43)
                 )
                )
                (br_if $case6
                 (i32.eq
                  (local.get $1)
                  (i32.const 45)
                 )
                )
                (br_if $case7
                 (i32.eq
                  (local.get $1)
                  (i32.const 46)
                 )
                )
                (br_if $case8
                 (i32.eq
                  (local.get $1)
                  (i32.const 5)
                 )
                )
                (br_if $case9
                 (i32.eq
                  (local.get $1)
                  (i32.const 12)
                 )
                )
                (br_if $case10
                 (i32.eq
                  (local.get $1)
                  (i32.const 11)
                 )
                )
                (br $default)
               )
              )
              (return
               (call $token/assembly/token.contract/Account#pack
                (local.get $0)
               )
              )
             )
             (return
              (call $token/assembly/token.contract/CurrencyStats#pack
               (local.get $0)
              )
             )
            )
            (return
             (call $token/assembly/token.contract/TokenConfig#pack
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
           (if
            (i32.eqz
             (local.tee $0
              (i32.load offset=4
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
            (local.tee $0
             (i32.load offset=4
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
         (local.set $1
          (call $~lib/as-chain/serializer/Encoder#constructor
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
         (call $~lib/as-chain/serializer/Encoder#packString
          (local.get $1)
          (i32.load offset=8
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
        (local.set $1
         (call $~lib/as-chain/serializer/Encoder#constructor
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
        (call $~lib/as-chain/serializer/Encoder#packString
         (local.get $1)
         (i32.load offset=4
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
       (return
        (call $~lib/as-chain/serializer/Encoder#getBytes
         (local.get $1)
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
   (i32.const 4956)
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
