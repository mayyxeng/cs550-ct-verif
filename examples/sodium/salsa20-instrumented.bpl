type i1 = int;
type i8 = int;
type i16 = int;
type i24 = int;
type i32 = int;
type i48 = int;
type i64 = int;
type i96 = int;
type i128 = int;
type ref = i64;
type float = i32;
const $0: i32;
axiom ($0 == 0);
const $0.ref: ref;
axiom ($0.ref == 0);
const $1.ref: ref;
axiom ($1.ref == 1);
const $2.ref: ref;
axiom ($2.ref == 2);
const $3.ref: ref;
axiom ($3.ref == 3);
const $4.ref: ref;
axiom ($4.ref == 4);
const $5.ref: ref;
axiom ($5.ref == 5);
const $6.ref: ref;
axiom ($6.ref == 6);
const $7.ref: ref;
axiom ($7.ref == 7);
const $8.ref: ref;
axiom ($8.ref == 8);
const $9.ref: ref;
axiom ($9.ref == 9);
const $10.ref: ref;
axiom ($10.ref == 10);
const $11.ref: ref;
axiom ($11.ref == 11);
const $12.ref: ref;
axiom ($12.ref == 12);
const $13.ref: ref;
axiom ($13.ref == 13);
const $14.ref: ref;
axiom ($14.ref == 14);
const $1024.ref: ref;
axiom ($1024.ref == 1024);
var $M.0: [ref] i8;
var $M.0.shadow: [ref] i8;
var $M.1: [ref] i8;
var $M.1.shadow: [ref] i8;
var $M.2: [ref] i32;
var $M.2.shadow: [ref] i32;
var $M.3: [ref] i32;
var $M.3.shadow: [ref] i32;
var $M.4: [ref] i32;
var $M.4.shadow: [ref] i32;
var $M.5: [ref] i32;
var $M.5.shadow: [ref] i32;
var $M.6: i32;
var $M.6.shadow: i32;
var $M.7: i32;
var $M.7.shadow: i32;
var $M.8: [ref] i32;
var $M.8.shadow: [ref] i32;
var $M.9: [ref] i32;
var $M.9.shadow: [ref] i32;
var $M.10: [ref] i32;
var $M.10.shadow: [ref] i32;
var $M.11: [ref] i32;
var $M.11.shadow: [ref] i32;
var $M.12: [ref] i32;
var $M.12.shadow: [ref] i32;
var $M.13: [ref] i8;
var $M.13.shadow: [ref] i8;
var $M.14: [ref] i32;
var $M.14.shadow: [ref] i32;
var $M.15: [ref] i32;
var $M.15.shadow: [ref] i32;
var $M.16: [ref] i32;
var $M.16.shadow: [ref] i32;
var $M.17: [ref] ref;
var $M.17.shadow: [ref] ref;
var $M.18: [ref] ref;
var $M.18.shadow: [ref] ref;
var $M.19: [ref] ref;
var $M.19.shadow: [ref] ref;
var $M.20: [ref] i8;
var $M.20.shadow: [ref] i8;
var $M.21: [ref] i8;
var $M.21.shadow: [ref] i8;
var $M.22: i32;
var $M.22.shadow: i32;
var $M.23: [ref] ref;
var $M.23.shadow: [ref] ref;
var $M.24: [ref] ref;
var $M.24.shadow: [ref] ref;
var $M.25: [ref] ref;
var $M.25.shadow: [ref] ref;
var $M.26: [ref] ref;
var $M.26.shadow: [ref] ref;
var $M.27: [ref] i8;
var $M.27.shadow: [ref] i8;
axiom ($GLOBALS_BOTTOM == $sub.ref(0,993));
axiom ($EXTERNS_BOTTOM == $sub.ref(0,32768));
axiom ($MALLOC_TOP == 2136997887);
function {:builtin "bv2int"} $bv2int.64(i: bv64) returns (i64);
function {:builtin "(_ int2bv 64)"} $int2bv.64(i: i64) returns (bv64);
function {:inline} $p2i.ref.i8(p: ref) returns (i8) { $trunc.i64.i8(p) }
function {:inline} $i2p.i8.ref(i: i8) returns (ref) { $zext.i8.i64(i) }
function {:inline} $p2i.ref.i16(p: ref) returns (i16) { $trunc.i64.i16(p) }
function {:inline} $i2p.i16.ref(i: i16) returns (ref) { $zext.i16.i64(i) }
function {:inline} $p2i.ref.i32(p: ref) returns (i32) { $trunc.i64.i32(p) }
function {:inline} $i2p.i32.ref(i: i32) returns (ref) { $zext.i32.i64(i) }
function {:inline} $p2i.ref.i64(p: ref) returns (i64) { p }
function {:inline} $i2p.i64.ref(i: i64) returns (ref) { i }
function {:inline} $eq.ref(p1: ref, p2: ref) returns (i1) { (if $eq.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $eq.ref.bool(p1: ref, p2: ref) returns (bool) { $eq.i64.bool(p1,p2) }
function {:inline} $ne.ref(p1: ref, p2: ref) returns (i1) { (if $ne.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $ne.ref.bool(p1: ref, p2: ref) returns (bool) { $ne.i64.bool(p1,p2) }
function {:inline} $ugt.ref(p1: ref, p2: ref) returns (i1) { (if $ugt.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $ugt.ref.bool(p1: ref, p2: ref) returns (bool) { $ugt.i64.bool(p1,p2) }
function {:inline} $uge.ref(p1: ref, p2: ref) returns (i1) { (if $uge.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $uge.ref.bool(p1: ref, p2: ref) returns (bool) { $uge.i64.bool(p1,p2) }
function {:inline} $ult.ref(p1: ref, p2: ref) returns (i1) { (if $ult.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $ult.ref.bool(p1: ref, p2: ref) returns (bool) { $ult.i64.bool(p1,p2) }
function {:inline} $ule.ref(p1: ref, p2: ref) returns (i1) { (if $ule.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $ule.ref.bool(p1: ref, p2: ref) returns (bool) { $ule.i64.bool(p1,p2) }
function {:inline} $sgt.ref(p1: ref, p2: ref) returns (i1) { (if $sgt.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $sgt.ref.bool(p1: ref, p2: ref) returns (bool) { $sgt.i64.bool(p1,p2) }
function {:inline} $sge.ref(p1: ref, p2: ref) returns (i1) { (if $sge.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $sge.ref.bool(p1: ref, p2: ref) returns (bool) { $sge.i64.bool(p1,p2) }
function {:inline} $slt.ref(p1: ref, p2: ref) returns (i1) { (if $slt.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $slt.ref.bool(p1: ref, p2: ref) returns (bool) { $slt.i64.bool(p1,p2) }
function {:inline} $sle.ref(p1: ref, p2: ref) returns (i1) { (if $sle.i64.bool(p1,p2) then 1 else 0) }
function {:inline} $sle.ref.bool(p1: ref, p2: ref) returns (bool) { $sle.i64.bool(p1,p2) }
function {:inline} $add.ref(p1: ref, p2: ref) returns (ref) { $add.i64(p1,p2) }
function {:inline} $sub.ref(p1: ref, p2: ref) returns (ref) { $sub.i64(p1,p2) }
function {:inline} $mul.ref(p1: ref, p2: ref) returns (ref) { $mul.i64(p1,p2) }
const .str1: ref;
const .str1991: ref;
const .str1996: ref;
const .str2: ref;
const .str2992: ref;
const .str3: ref;
const .str3993: ref;
const .str4994: ref;
const .str990: ref;
const .str995: ref;
const {:count 65} __PRETTY_FUNCTION__.randombytes: ref;
const {:count 50} __PRETTY_FUNCTION__.safe_read: ref;
const __SMACK_code: ref;
const __SMACK_decls: ref;
const __SMACK_dummy: ref;
const __SMACK_init_func_memory_model: ref;
const __SMACK_static_init: ref;
const __SMACK_top_decl: ref;
const __SMACK_value: ref;
const __VERIFIER_assume: ref;
const __VERIFIER_nondet: ref;
const __VERIFIER_nondet_unsigned_char: ref;
const __VERIFIER_nondet_unsigned_int: ref;
const __VERIFIER_nondet_unsigned_long: ref;
const __VERIFIER_nondet_unsigned_short: ref;
const __assert_fail: ref;
const __errno_location: ref;
const _mprotect_noaccess: ref;
const _mprotect_readonly: ref;
const _mprotect_readwrite: ref;
const _sodium_malloc: ref;
const _sodium_mprotect: ref;
const abort: ref;
const {:count 16} canary: ref;
const close: ref;
const crypto_core_salsa20: ref;
const crypto_core_salsa20_wrapper: ref;
const fcntl: ref;
const free_: ref;
const fstat: ref;
const implementation_: ref;
const llvm.dbg.declare: ref;
const llvm.dbg.value: ref;
const llvm.memset.p0i8.i64: ref;
const load_littleendian: ref;
const malloc: ref;
const open: ref;
const public_in: ref;
const randombytes_buf: ref;
const randombytes_random: ref;
const randombytes_sysrandom: ref;
const randombytes_sysrandom_buf: ref;
const randombytes_sysrandom_close: ref;
const randombytes_sysrandom_implementation: ref;
const randombytes_sysrandom_implementation_name: ref;
const randombytes_sysrandom_init: ref;
const randombytes_sysrandom_random_dev_open: ref;
const {:count 3} randombytes_sysrandom_random_dev_open.devices: ref;
const randombytes_sysrandom_stir: ref;
const randombytes_sysrandom_stir_if_needed: ref;
const read: ref;
const rotate: ref;
const safe_read: ref;
const sodium_malloc: ref;
const sodium_memzero: ref;
const store_littleendian: ref;
const strchr: ref;
const stream: ref;
procedure {:inline 1} $initialize()
modifies $CurrAddr, $exn;
modifies $M.21, $M.7, $M.6, $M.22, $M.23, $M.18, $M.24, $M.25, $M.19, $M.26, $M.20, $M.13, $M.17, $M.27;
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
procedure {:inline 1} __SMACK_code.ref($p0: ref, $p0.shadow: ref);
procedure {:inline 1} __SMACK_code.ref.i32($p0: ref, $p0.shadow: ref, p.1: i32, p.1.shadow: i32);
procedure {:inline 1} __SMACK_dummy(v: i32, v.shadow: i32)
modifies $exn;
{
$bb0:
  call {:cexpr "v"} boogie_si_record_i32(v);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 79, 3} true;
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 80, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} __SMACK_init_func_memory_model()
modifies $CurrAddr, $exn;
{
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 825, 3} true;
  $CurrAddr := $1024.ref;
  $CurrAddr.shadow := $1024.ref;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 826, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} __SMACK_static_init()
modifies $M.21, $M.7, $M.6, $M.22, $M.23, $M.18, $M.24, $M.25, $M.19, $M.26, $M.20, $M.13, $M.17, $M.27, $exn;
{
$bb0:
  $shadow_ok := ($shadow_ok && (canary == canary));
  $M.21 := $store.i8($M.21,canary,0);
  $M.21.shadow := $store.i8($M.21.shadow,canary,0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,1) == $add.ref(canary,1)));
  $M.21 := $store.i8($M.21,$add.ref(canary,1),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,1),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,2) == $add.ref(canary,2)));
  $M.21 := $store.i8($M.21,$add.ref(canary,2),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,2),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,3) == $add.ref(canary,3)));
  $M.21 := $store.i8($M.21,$add.ref(canary,3),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,3),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,4) == $add.ref(canary,4)));
  $M.21 := $store.i8($M.21,$add.ref(canary,4),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,4),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,5) == $add.ref(canary,5)));
  $M.21 := $store.i8($M.21,$add.ref(canary,5),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,5),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,6) == $add.ref(canary,6)));
  $M.21 := $store.i8($M.21,$add.ref(canary,6),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,6),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,7) == $add.ref(canary,7)));
  $M.21 := $store.i8($M.21,$add.ref(canary,7),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,7),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,8) == $add.ref(canary,8)));
  $M.21 := $store.i8($M.21,$add.ref(canary,8),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,8),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,9) == $add.ref(canary,9)));
  $M.21 := $store.i8($M.21,$add.ref(canary,9),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,9),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,10) == $add.ref(canary,10)));
  $M.21 := $store.i8($M.21,$add.ref(canary,10),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,10),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,11) == $add.ref(canary,11)));
  $M.21 := $store.i8($M.21,$add.ref(canary,11),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,11),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,12) == $add.ref(canary,12)));
  $M.21 := $store.i8($M.21,$add.ref(canary,12),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,12),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,13) == $add.ref(canary,13)));
  $M.21 := $store.i8($M.21,$add.ref(canary,13),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,13),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,14) == $add.ref(canary,14)));
  $M.21 := $store.i8($M.21,$add.ref(canary,14),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,14),0);
  $shadow_ok := ($shadow_ok && ($add.ref(canary,15) == $add.ref(canary,15)));
  $M.21 := $store.i8($M.21,$add.ref(canary,15),0);
  $M.21.shadow := $store.i8($M.21.shadow,$add.ref(canary,15),0);
  $M.7 := $sub.i32(0,1);
  $M.7.shadow := $sub.i32(0,1);
  $M.6 := 0;
  $M.6.shadow := 0;
  $M.22 := 0;
  $M.22.shadow := 0;
  $shadow_ok := ($shadow_ok && (randombytes_sysrandom_implementation == randombytes_sysrandom_implementation));
  $M.23 := $store.ref($M.23,randombytes_sysrandom_implementation,randombytes_sysrandom_implementation_name);
  $M.23.shadow := $store.ref($M.23.shadow,randombytes_sysrandom_implementation,randombytes_sysrandom_implementation_name);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_implementation,8) == $add.ref(randombytes_sysrandom_implementation,8)));
  $M.18 := $store.ref($M.18,$add.ref(randombytes_sysrandom_implementation,8),randombytes_sysrandom);
  $M.18.shadow := $store.ref($M.18.shadow,$add.ref(randombytes_sysrandom_implementation,8),randombytes_sysrandom);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_implementation,16) == $add.ref(randombytes_sysrandom_implementation,16)));
  $M.24 := $store.ref($M.24,$add.ref(randombytes_sysrandom_implementation,16),randombytes_sysrandom_stir);
  $M.24.shadow := $store.ref($M.24.shadow,$add.ref(randombytes_sysrandom_implementation,16),randombytes_sysrandom_stir);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_implementation,24) == $add.ref(randombytes_sysrandom_implementation,24)));
  $M.25 := $store.ref($M.25,$add.ref(randombytes_sysrandom_implementation,24),$0.ref);
  $M.25.shadow := $store.ref($M.25.shadow,$add.ref(randombytes_sysrandom_implementation,24),$0.ref);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_implementation,32) == $add.ref(randombytes_sysrandom_implementation,32)));
  $M.19 := $store.ref($M.19,$add.ref(randombytes_sysrandom_implementation,32),randombytes_sysrandom_buf);
  $M.19.shadow := $store.ref($M.19.shadow,$add.ref(randombytes_sysrandom_implementation,32),randombytes_sysrandom_buf);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_implementation,40) == $add.ref(randombytes_sysrandom_implementation,40)));
  $M.26 := $store.ref($M.26,$add.ref(randombytes_sysrandom_implementation,40),randombytes_sysrandom_close);
  $M.26.shadow := $store.ref($M.26.shadow,$add.ref(randombytes_sysrandom_implementation,40),randombytes_sysrandom_close);
  $shadow_ok := ($shadow_ok && (__PRETTY_FUNCTION__.safe_read == __PRETTY_FUNCTION__.safe_read));
  $M.20 := $store.i8($M.20,__PRETTY_FUNCTION__.safe_read,115);
  $M.20.shadow := $store.i8($M.20.shadow,__PRETTY_FUNCTION__.safe_read,115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,1) == $add.ref(__PRETTY_FUNCTION__.safe_read,1)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,1),115);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,1),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,2) == $add.ref(__PRETTY_FUNCTION__.safe_read,2)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,2),105);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,2),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,3) == $add.ref(__PRETTY_FUNCTION__.safe_read,3)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,3),122);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,3),122);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,4) == $add.ref(__PRETTY_FUNCTION__.safe_read,4)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,4),101);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,4),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,5) == $add.ref(__PRETTY_FUNCTION__.safe_read,5)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,5),95);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,5),95);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,6) == $add.ref(__PRETTY_FUNCTION__.safe_read,6)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,6),116);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,6),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,7) == $add.ref(__PRETTY_FUNCTION__.safe_read,7)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,7),32);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,7),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,8) == $add.ref(__PRETTY_FUNCTION__.safe_read,8)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,8),115);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,8),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,9) == $add.ref(__PRETTY_FUNCTION__.safe_read,9)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,9),97);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,9),97);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,10) == $add.ref(__PRETTY_FUNCTION__.safe_read,10)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,10),102);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,10),102);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,11) == $add.ref(__PRETTY_FUNCTION__.safe_read,11)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,11),101);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,11),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,12) == $add.ref(__PRETTY_FUNCTION__.safe_read,12)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,12),95);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,12),95);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,13) == $add.ref(__PRETTY_FUNCTION__.safe_read,13)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,13),114);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,13),114);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,14) == $add.ref(__PRETTY_FUNCTION__.safe_read,14)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,14),101);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,14),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,15) == $add.ref(__PRETTY_FUNCTION__.safe_read,15)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,15),97);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,15),97);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,16) == $add.ref(__PRETTY_FUNCTION__.safe_read,16)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,16),100);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,16),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,17) == $add.ref(__PRETTY_FUNCTION__.safe_read,17)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,17),40);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,17),40);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,18) == $add.ref(__PRETTY_FUNCTION__.safe_read,18)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,18),99);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,18),99);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,19) == $add.ref(__PRETTY_FUNCTION__.safe_read,19)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,19),111);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,19),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,20) == $add.ref(__PRETTY_FUNCTION__.safe_read,20)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,20),110);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,20),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,21) == $add.ref(__PRETTY_FUNCTION__.safe_read,21)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,21),115);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,21),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,22) == $add.ref(__PRETTY_FUNCTION__.safe_read,22)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,22),116);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,22),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,23) == $add.ref(__PRETTY_FUNCTION__.safe_read,23)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,23),32);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,23),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,24) == $add.ref(__PRETTY_FUNCTION__.safe_read,24)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,24),105);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,24),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,25) == $add.ref(__PRETTY_FUNCTION__.safe_read,25)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,25),110);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,25),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,26) == $add.ref(__PRETTY_FUNCTION__.safe_read,26)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,26),116);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,26),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,27) == $add.ref(__PRETTY_FUNCTION__.safe_read,27)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,27),44);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,27),44);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,28) == $add.ref(__PRETTY_FUNCTION__.safe_read,28)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,28),32);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,28),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,29) == $add.ref(__PRETTY_FUNCTION__.safe_read,29)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,29),118);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,29),118);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,30) == $add.ref(__PRETTY_FUNCTION__.safe_read,30)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,30),111);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,30),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,31) == $add.ref(__PRETTY_FUNCTION__.safe_read,31)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,31),105);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,31),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,32) == $add.ref(__PRETTY_FUNCTION__.safe_read,32)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,32),100);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,32),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,33) == $add.ref(__PRETTY_FUNCTION__.safe_read,33)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,33),32);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,33),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,34) == $add.ref(__PRETTY_FUNCTION__.safe_read,34)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,34),42);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,34),42);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,35) == $add.ref(__PRETTY_FUNCTION__.safe_read,35)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,35),99);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,35),99);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,36) == $add.ref(__PRETTY_FUNCTION__.safe_read,36)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,36),111);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,36),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,37) == $add.ref(__PRETTY_FUNCTION__.safe_read,37)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,37),110);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,37),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,38) == $add.ref(__PRETTY_FUNCTION__.safe_read,38)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,38),115);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,38),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,39) == $add.ref(__PRETTY_FUNCTION__.safe_read,39)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,39),116);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,39),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,40) == $add.ref(__PRETTY_FUNCTION__.safe_read,40)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,40),44);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,40),44);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,41) == $add.ref(__PRETTY_FUNCTION__.safe_read,41)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,41),32);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,41),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,42) == $add.ref(__PRETTY_FUNCTION__.safe_read,42)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,42),115);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,42),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,43) == $add.ref(__PRETTY_FUNCTION__.safe_read,43)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,43),105);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,43),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,44) == $add.ref(__PRETTY_FUNCTION__.safe_read,44)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,44),122);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,44),122);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,45) == $add.ref(__PRETTY_FUNCTION__.safe_read,45)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,45),101);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,45),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,46) == $add.ref(__PRETTY_FUNCTION__.safe_read,46)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,46),95);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,46),95);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,47) == $add.ref(__PRETTY_FUNCTION__.safe_read,47)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,47),116);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,47),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,48) == $add.ref(__PRETTY_FUNCTION__.safe_read,48)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,48),41);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,48),41);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.safe_read,49) == $add.ref(__PRETTY_FUNCTION__.safe_read,49)));
  $M.20 := $store.i8($M.20,$add.ref(__PRETTY_FUNCTION__.safe_read,49),0);
  $M.20.shadow := $store.i8($M.20.shadow,$add.ref(__PRETTY_FUNCTION__.safe_read,49),0);
  $shadow_ok := ($shadow_ok && (randombytes_sysrandom_random_dev_open.devices == randombytes_sysrandom_random_dev_open.devices));
  $M.13 := $store.ref($M.13,randombytes_sysrandom_random_dev_open.devices,.str3993);
  $M.13.shadow := $store.ref($M.13.shadow,randombytes_sysrandom_random_dev_open.devices,.str3993);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_random_dev_open.devices,8) == $add.ref(randombytes_sysrandom_random_dev_open.devices,8)));
  $M.13 := $store.ref($M.13,$add.ref(randombytes_sysrandom_random_dev_open.devices,8),.str4994);
  $M.13.shadow := $store.ref($M.13.shadow,$add.ref(randombytes_sysrandom_random_dev_open.devices,8),.str4994);
  $shadow_ok := ($shadow_ok && ($add.ref(randombytes_sysrandom_random_dev_open.devices,16) == $add.ref(randombytes_sysrandom_random_dev_open.devices,16)));
  $M.13 := $store.ref($M.13,$add.ref(randombytes_sysrandom_random_dev_open.devices,16),$0.ref);
  $M.13.shadow := $store.ref($M.13.shadow,$add.ref(randombytes_sysrandom_random_dev_open.devices,16),$0.ref);
  $shadow_ok := ($shadow_ok && (implementation_ == implementation_));
  $M.17 := $store.ref($M.17,implementation_,randombytes_sysrandom_implementation);
  $M.17.shadow := $store.ref($M.17.shadow,implementation_,randombytes_sysrandom_implementation);
  call {:cexpr "implementation"} boogie_si_record_ref(randombytes_sysrandom_implementation);
  $shadow_ok := ($shadow_ok && (__PRETTY_FUNCTION__.randombytes == __PRETTY_FUNCTION__.randombytes));
  $M.27 := $store.i8($M.27,__PRETTY_FUNCTION__.randombytes,118);
  $M.27.shadow := $store.i8($M.27.shadow,__PRETTY_FUNCTION__.randombytes,118);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,1) == $add.ref(__PRETTY_FUNCTION__.randombytes,1)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,1),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,1),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,2) == $add.ref(__PRETTY_FUNCTION__.randombytes,2)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,2),105);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,2),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,3) == $add.ref(__PRETTY_FUNCTION__.randombytes,3)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,3),100);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,3),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,4) == $add.ref(__PRETTY_FUNCTION__.randombytes,4)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,4),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,4),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,5) == $add.ref(__PRETTY_FUNCTION__.randombytes,5)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,5),114);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,5),114);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,6) == $add.ref(__PRETTY_FUNCTION__.randombytes,6)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,6),97);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,6),97);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,7) == $add.ref(__PRETTY_FUNCTION__.randombytes,7)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,7),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,7),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,8) == $add.ref(__PRETTY_FUNCTION__.randombytes,8)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,8),100);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,8),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,9) == $add.ref(__PRETTY_FUNCTION__.randombytes,9)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,9),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,9),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,10) == $add.ref(__PRETTY_FUNCTION__.randombytes,10)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,10),109);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,10),109);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,11) == $add.ref(__PRETTY_FUNCTION__.randombytes,11)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,11),98);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,11),98);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,12) == $add.ref(__PRETTY_FUNCTION__.randombytes,12)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,12),121);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,12),121);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,13) == $add.ref(__PRETTY_FUNCTION__.randombytes,13)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,13),116);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,13),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,14) == $add.ref(__PRETTY_FUNCTION__.randombytes,14)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,14),101);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,14),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,15) == $add.ref(__PRETTY_FUNCTION__.randombytes,15)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,15),115);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,15),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,16) == $add.ref(__PRETTY_FUNCTION__.randombytes,16)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,16),40);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,16),40);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,17) == $add.ref(__PRETTY_FUNCTION__.randombytes,17)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,17),117);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,17),117);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,18) == $add.ref(__PRETTY_FUNCTION__.randombytes,18)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,18),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,18),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,19) == $add.ref(__PRETTY_FUNCTION__.randombytes,19)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,19),115);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,19),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,20) == $add.ref(__PRETTY_FUNCTION__.randombytes,20)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,20),105);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,20),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,21) == $add.ref(__PRETTY_FUNCTION__.randombytes,21)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,21),103);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,21),103);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,22) == $add.ref(__PRETTY_FUNCTION__.randombytes,22)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,22),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,22),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,23) == $add.ref(__PRETTY_FUNCTION__.randombytes,23)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,23),101);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,23),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,24) == $add.ref(__PRETTY_FUNCTION__.randombytes,24)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,24),100);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,24),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,25) == $add.ref(__PRETTY_FUNCTION__.randombytes,25)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,25),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,25),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,26) == $add.ref(__PRETTY_FUNCTION__.randombytes,26)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,26),99);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,26),99);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,27) == $add.ref(__PRETTY_FUNCTION__.randombytes,27)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,27),104);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,27),104);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,28) == $add.ref(__PRETTY_FUNCTION__.randombytes,28)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,28),97);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,28),97);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,29) == $add.ref(__PRETTY_FUNCTION__.randombytes,29)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,29),114);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,29),114);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,30) == $add.ref(__PRETTY_FUNCTION__.randombytes,30)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,30),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,30),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,31) == $add.ref(__PRETTY_FUNCTION__.randombytes,31)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,31),42);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,31),42);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,32) == $add.ref(__PRETTY_FUNCTION__.randombytes,32)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,32),99);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,32),99);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,33) == $add.ref(__PRETTY_FUNCTION__.randombytes,33)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,33),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,33),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,34) == $add.ref(__PRETTY_FUNCTION__.randombytes,34)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,34),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,34),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,35) == $add.ref(__PRETTY_FUNCTION__.randombytes,35)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,35),115);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,35),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,36) == $add.ref(__PRETTY_FUNCTION__.randombytes,36)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,36),116);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,36),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,37) == $add.ref(__PRETTY_FUNCTION__.randombytes,37)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,37),44);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,37),44);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,38) == $add.ref(__PRETTY_FUNCTION__.randombytes,38)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,38),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,38),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,39) == $add.ref(__PRETTY_FUNCTION__.randombytes,39)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,39),99);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,39),99);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,40) == $add.ref(__PRETTY_FUNCTION__.randombytes,40)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,40),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,40),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,41) == $add.ref(__PRETTY_FUNCTION__.randombytes,41)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,41),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,41),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,42) == $add.ref(__PRETTY_FUNCTION__.randombytes,42)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,42),115);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,42),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,43) == $add.ref(__PRETTY_FUNCTION__.randombytes,43)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,43),116);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,43),116);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,44) == $add.ref(__PRETTY_FUNCTION__.randombytes,44)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,44),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,44),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,45) == $add.ref(__PRETTY_FUNCTION__.randombytes,45)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,45),117);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,45),117);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,46) == $add.ref(__PRETTY_FUNCTION__.randombytes,46)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,46),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,46),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,47) == $add.ref(__PRETTY_FUNCTION__.randombytes,47)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,47),115);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,47),115);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,48) == $add.ref(__PRETTY_FUNCTION__.randombytes,48)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,48),105);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,48),105);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,49) == $add.ref(__PRETTY_FUNCTION__.randombytes,49)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,49),103);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,49),103);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,50) == $add.ref(__PRETTY_FUNCTION__.randombytes,50)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,50),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,50),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,51) == $add.ref(__PRETTY_FUNCTION__.randombytes,51)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,51),101);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,51),101);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,52) == $add.ref(__PRETTY_FUNCTION__.randombytes,52)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,52),100);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,52),100);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,53) == $add.ref(__PRETTY_FUNCTION__.randombytes,53)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,53),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,53),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,54) == $add.ref(__PRETTY_FUNCTION__.randombytes,54)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,54),108);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,54),108);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,55) == $add.ref(__PRETTY_FUNCTION__.randombytes,55)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,55),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,55),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,56) == $add.ref(__PRETTY_FUNCTION__.randombytes,56)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,56),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,56),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,57) == $add.ref(__PRETTY_FUNCTION__.randombytes,57)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,57),103);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,57),103);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,58) == $add.ref(__PRETTY_FUNCTION__.randombytes,58)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,58),32);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,58),32);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,59) == $add.ref(__PRETTY_FUNCTION__.randombytes,59)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,59),108);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,59),108);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,60) == $add.ref(__PRETTY_FUNCTION__.randombytes,60)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,60),111);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,60),111);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,61) == $add.ref(__PRETTY_FUNCTION__.randombytes,61)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,61),110);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,61),110);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,62) == $add.ref(__PRETTY_FUNCTION__.randombytes,62)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,62),103);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,62),103);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,63) == $add.ref(__PRETTY_FUNCTION__.randombytes,63)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,63),41);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,63),41);
  $shadow_ok := ($shadow_ok && ($add.ref(__PRETTY_FUNCTION__.randombytes,64) == $add.ref(__PRETTY_FUNCTION__.randombytes,64)));
  $M.27 := $store.i8($M.27,$add.ref(__PRETTY_FUNCTION__.randombytes,64),0);
  $M.27.shadow := $store.i8($M.27.shadow,$add.ref(__PRETTY_FUNCTION__.randombytes,64),0);
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} __SMACK_top_decl.ref($p0: ref, $p0.shadow: ref);
procedure {:inline 1} __SMACK_value.ref(p.0: ref, p.0.shadow: ref) returns ($r: ref, $r.shadow: ref);
procedure {:inline 1} __VERIFIER_assume(x: i32)
modifies $exn;
{
$bb0:
  call {:cexpr "x"} boogie_si_record_i32(x);
  call {:cexpr "v"} boogie_si_record_i32(x);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 79, 3} true;
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 31, 21} true;
  assume (x != $0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c", 32, 1} true;
  $exn := false;
  return;
}
procedure {:inline 1} __VERIFIER_nondet() returns ($r: ref);
procedure {:inline 1} __VERIFIER_nondet_unsigned_char() returns ($r: i8);
procedure {:inline 1} __VERIFIER_nondet_unsigned_int() returns ($r: i32);
procedure {:inline 1} __VERIFIER_nondet_unsigned_long() returns ($r: i64);
procedure {:inline 1} __VERIFIER_nondet_unsigned_short() returns ($r: i16);
procedure {:inline 1} __assert_fail($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref, $i2: i32, $i2.shadow: i32, $p3: ref, $p3.shadow: ref);
procedure {:inline 1} __errno_location() returns ($r: ref, $r.shadow: ref);
procedure {:inline 1} _mprotect_noaccess(ptr: ref, ptr.shadow: ref, size: i64, size.shadow: i64) returns ($r: i32, $r.shadow: i32)
modifies $M.2, $exn;
{
  var $p0: ref;
  var $p0.shadow: ref;
$bb0:
  call {:cexpr "ptr"} boogie_si_record_ref(ptr);
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 243, 5} true;
  call $p0, $p0.shadow := __errno_location();
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 243, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $M.2 := $store.i32($M.2,$p0,38);
  $M.2.shadow := $store.i32($M.2.shadow,$p0.shadow,38);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 244, 5} true;
  $r := $sub.i32(0,1);
  $r.shadow := $sub.i32(0,1);
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} _mprotect_readonly(ptr: ref, ptr.shadow: ref, size: i64, size.shadow: i64) returns ($r: i32, $r.shadow: i32)
modifies $M.4, $exn;
{
  var $p0: ref;
  var $p0.shadow: ref;
$bb0:
  call {:cexpr "ptr"} boogie_si_record_ref(ptr);
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 257, 5} true;
  call $p0, $p0.shadow := __errno_location();
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 257, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $M.4 := $store.i32($M.4,$p0,38);
  $M.4.shadow := $store.i32($M.4.shadow,$p0.shadow,38);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 258, 5} true;
  $r := $sub.i32(0,1);
  $r.shadow := $sub.i32(0,1);
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} _mprotect_readwrite(ptr: ref, ptr.shadow: ref, size: i64, size.shadow: i64) returns ($r: i32, $r.shadow: i32)
modifies $M.5, $exn;
{
  var $p0: ref;
  var $p0.shadow: ref;
$bb0:
  call {:cexpr "ptr"} boogie_si_record_ref(ptr);
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 271, 5} true;
  call $p0, $p0.shadow := __errno_location();
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 271, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $M.5 := $store.i32($M.5,$p0,38);
  $M.5.shadow := $store.i32($M.5.shadow,$p0.shadow,38);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 272, 5} true;
  $r := $sub.i32(0,1);
  $r.shadow := $sub.i32(0,1);
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} _sodium_malloc(size: i64, size.shadow: i64) returns ($r: ref, $r.shadow: ref)
modifies $exn;
modifies $CurrAddr, $Alloc;
{
  var $p0: ref;
  var $p0.shadow: ref;
$bb0:
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 355, 12} true;
  call $p0, $p0.shadow := malloc(size, size.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 355, 12} true;
  $r := $p0;
  $r.shadow := $p0.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} _sodium_mprotect(ptr: ref, ptr.shadow: ref, cb: ref, cb.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $M.3, $exn;
{
  var $p0: ref;
  var $p0.shadow: ref;
$bb0:
  call {:cexpr "ptr"} boogie_si_record_ref(ptr);
  call {:cexpr "cb"} boogie_si_record_ref(cb);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 473, 5} true;
  call $p0, $p0.shadow := __errno_location();
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 473, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $M.3 := $store.i32($M.3,$p0,38);
  $M.3.shadow := $store.i32($M.3.shadow,$p0.shadow,38);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 474, 5} true;
  $r := $sub.i32(0,1);
  $r.shadow := $sub.i32(0,1);
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} abort();
procedure {:inline 1} close($i0: i32, $i0.shadow: i32) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} crypto_core_salsa20(out: ref, out.shadow: ref, in: ref, in.shadow: ref, k: ref, k.shadow: ref, c: ref, c.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $exn;
modifies $M.20;
{
  var $i1: i32;
  var $i1.shadow: i32;
  var $i100: i32;
  var $i100.shadow: i32;
  var $i101: i32;
  var $i101.shadow: i32;
  var $i102: i32;
  var $i102.shadow: i32;
  var $i103: i32;
  var $i103.shadow: i32;
  var $i104: i32;
  var $i104.shadow: i32;
  var $i105: i32;
  var $i105.shadow: i32;
  var $i106: i32;
  var $i106.shadow: i32;
  var $i107: i32;
  var $i107.shadow: i32;
  var $i108: i32;
  var $i108.shadow: i32;
  var $i109: i32;
  var $i109.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i110: i32;
  var $i110.shadow: i32;
  var $i111: i32;
  var $i111.shadow: i32;
  var $i112: i32;
  var $i112.shadow: i32;
  var $i113: i32;
  var $i113.shadow: i32;
  var $i114: i32;
  var $i114.shadow: i32;
  var $i115: i32;
  var $i115.shadow: i32;
  var $i116: i32;
  var $i116.shadow: i32;
  var $i117: i32;
  var $i117.shadow: i32;
  var $i118: i32;
  var $i118.shadow: i32;
  var $i119: i32;
  var $i119.shadow: i32;
  var $i120: i32;
  var $i120.shadow: i32;
  var $i121: i32;
  var $i121.shadow: i32;
  var $i122: i32;
  var $i122.shadow: i32;
  var $i123: i32;
  var $i123.shadow: i32;
  var $i124: i32;
  var $i124.shadow: i32;
  var $i125: i32;
  var $i125.shadow: i32;
  var $i126: i32;
  var $i126.shadow: i32;
  var $i127: i32;
  var $i127.shadow: i32;
  var $i128: i32;
  var $i128.shadow: i32;
  var $i129: i32;
  var $i129.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i130: i32;
  var $i130.shadow: i32;
  var $i131: i32;
  var $i131.shadow: i32;
  var $i132: i32;
  var $i132.shadow: i32;
  var $i133: i32;
  var $i133.shadow: i32;
  var $i134: i32;
  var $i134.shadow: i32;
  var $i135: i32;
  var $i135.shadow: i32;
  var $i136: i32;
  var $i136.shadow: i32;
  var $i137: i32;
  var $i137.shadow: i32;
  var $i138: i32;
  var $i138.shadow: i32;
  var $i139: i32;
  var $i139.shadow: i32;
  var $i140: i32;
  var $i140.shadow: i32;
  var $i141: i32;
  var $i141.shadow: i32;
  var $i142: i32;
  var $i142.shadow: i32;
  var $i143: i32;
  var $i143.shadow: i32;
  var $i144: i32;
  var $i144.shadow: i32;
  var $i145: i32;
  var $i145.shadow: i32;
  var $i146: i32;
  var $i146.shadow: i32;
  var $i147: i32;
  var $i147.shadow: i32;
  var $i148: i32;
  var $i148.shadow: i32;
  var $i149: i32;
  var $i149.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i150: i32;
  var $i150.shadow: i32;
  var $i151: i32;
  var $i151.shadow: i32;
  var $i152: i32;
  var $i152.shadow: i32;
  var $i153: i32;
  var $i153.shadow: i32;
  var $i154: i32;
  var $i154.shadow: i32;
  var $i155: i32;
  var $i155.shadow: i32;
  var $i156: i32;
  var $i156.shadow: i32;
  var $i157: i32;
  var $i157.shadow: i32;
  var $i158: i32;
  var $i158.shadow: i32;
  var $i159: i32;
  var $i159.shadow: i32;
  var $i160: i32;
  var $i160.shadow: i32;
  var $i161: i32;
  var $i161.shadow: i32;
  var $i162: i32;
  var $i162.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i19: i32;
  var $i19.shadow: i32;
  var $i21: i32;
  var $i21.shadow: i32;
  var $i23: i32;
  var $i23.shadow: i32;
  var $i25: i32;
  var $i25.shadow: i32;
  var $i27: i32;
  var $i27.shadow: i32;
  var $i29: i32;
  var $i29.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i31: i32;
  var $i31.shadow: i32;
  var $i32: i32;
  var $i32.shadow: i32;
  var $i33: i32;
  var $i33.shadow: i32;
  var $i34: i32;
  var $i34.shadow: i32;
  var $i35: i32;
  var $i35.shadow: i32;
  var $i36: i32;
  var $i36.shadow: i32;
  var $i37: i32;
  var $i37.shadow: i32;
  var $i38: i32;
  var $i38.shadow: i32;
  var $i39: i32;
  var $i39.shadow: i32;
  var $i40: i32;
  var $i40.shadow: i32;
  var $i41: i32;
  var $i41.shadow: i32;
  var $i42: i32;
  var $i42.shadow: i32;
  var $i43: i32;
  var $i43.shadow: i32;
  var $i44: i32;
  var $i44.shadow: i32;
  var $i45: i32;
  var $i45.shadow: i32;
  var $i46: i32;
  var $i46.shadow: i32;
  var $i47: i32;
  var $i47.shadow: i32;
  var $i48: i32;
  var $i48.shadow: i32;
  var $i49: i1;
  var $i49.shadow: i1;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i50: i32;
  var $i50.shadow: i32;
  var $i51: i32;
  var $i51.shadow: i32;
  var $i52: i32;
  var $i52.shadow: i32;
  var $i53: i32;
  var $i53.shadow: i32;
  var $i54: i32;
  var $i54.shadow: i32;
  var $i55: i32;
  var $i55.shadow: i32;
  var $i56: i32;
  var $i56.shadow: i32;
  var $i57: i32;
  var $i57.shadow: i32;
  var $i58: i32;
  var $i58.shadow: i32;
  var $i59: i32;
  var $i59.shadow: i32;
  var $i60: i32;
  var $i60.shadow: i32;
  var $i61: i32;
  var $i61.shadow: i32;
  var $i62: i32;
  var $i62.shadow: i32;
  var $i63: i32;
  var $i63.shadow: i32;
  var $i64: i32;
  var $i64.shadow: i32;
  var $i65: i32;
  var $i65.shadow: i32;
  var $i66: i32;
  var $i66.shadow: i32;
  var $i67: i32;
  var $i67.shadow: i32;
  var $i68: i32;
  var $i68.shadow: i32;
  var $i69: i32;
  var $i69.shadow: i32;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i70: i32;
  var $i70.shadow: i32;
  var $i71: i32;
  var $i71.shadow: i32;
  var $i72: i32;
  var $i72.shadow: i32;
  var $i73: i32;
  var $i73.shadow: i32;
  var $i74: i32;
  var $i74.shadow: i32;
  var $i75: i32;
  var $i75.shadow: i32;
  var $i76: i32;
  var $i76.shadow: i32;
  var $i77: i32;
  var $i77.shadow: i32;
  var $i78: i32;
  var $i78.shadow: i32;
  var $i79: i32;
  var $i79.shadow: i32;
  var $i80: i32;
  var $i80.shadow: i32;
  var $i81: i32;
  var $i81.shadow: i32;
  var $i82: i32;
  var $i82.shadow: i32;
  var $i83: i32;
  var $i83.shadow: i32;
  var $i84: i32;
  var $i84.shadow: i32;
  var $i85: i32;
  var $i85.shadow: i32;
  var $i86: i32;
  var $i86.shadow: i32;
  var $i87: i32;
  var $i87.shadow: i32;
  var $i88: i32;
  var $i88.shadow: i32;
  var $i89: i32;
  var $i89.shadow: i32;
  var $i9: i32;
  var $i9.shadow: i32;
  var $i90: i32;
  var $i90.shadow: i32;
  var $i91: i32;
  var $i91.shadow: i32;
  var $i92: i32;
  var $i92.shadow: i32;
  var $i93: i32;
  var $i93.shadow: i32;
  var $i94: i32;
  var $i94.shadow: i32;
  var $i95: i32;
  var $i95.shadow: i32;
  var $i96: i32;
  var $i96.shadow: i32;
  var $i97: i32;
  var $i97.shadow: i32;
  var $i98: i32;
  var $i98.shadow: i32;
  var $i99: i32;
  var $i99.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p10: ref;
  var $p10.shadow: ref;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p16: ref;
  var $p16.shadow: ref;
  var $p163: ref;
  var $p163.shadow: ref;
  var $p164: ref;
  var $p164.shadow: ref;
  var $p165: ref;
  var $p165.shadow: ref;
  var $p166: ref;
  var $p166.shadow: ref;
  var $p167: ref;
  var $p167.shadow: ref;
  var $p168: ref;
  var $p168.shadow: ref;
  var $p169: ref;
  var $p169.shadow: ref;
  var $p170: ref;
  var $p170.shadow: ref;
  var $p171: ref;
  var $p171.shadow: ref;
  var $p172: ref;
  var $p172.shadow: ref;
  var $p173: ref;
  var $p173.shadow: ref;
  var $p174: ref;
  var $p174.shadow: ref;
  var $p175: ref;
  var $p175.shadow: ref;
  var $p176: ref;
  var $p176.shadow: ref;
  var $p177: ref;
  var $p177.shadow: ref;
  var $p178: ref;
  var $p178.shadow: ref;
  var $p18: ref;
  var $p18.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p20: ref;
  var $p20.shadow: ref;
  var $p22: ref;
  var $p22.shadow: ref;
  var $p24: ref;
  var $p24.shadow: ref;
  var $p26: ref;
  var $p26.shadow: ref;
  var $p28: ref;
  var $p28.shadow: ref;
  var $p30: ref;
  var $p30.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
$bb0:
  call {:cexpr "out"} boogie_si_record_ref(out);
  call {:cexpr "in"} boogie_si_record_ref(in);
  call {:cexpr "k"} boogie_si_record_ref(k);
  call {:cexpr "c"} boogie_si_record_ref(c);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 47, 13} true;
  $p0 := c;
  $p0.shadow := c.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 47, 13} true;
  call $i1, $i1.shadow := load_littleendian($p0, $p0.shadow);
  call {:cexpr "x0"} boogie_si_record_i32($i1);
  call {:cexpr "j0"} boogie_si_record_i32($i1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 48, 13} true;
  $p2 := k;
  $p2.shadow := k.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 48, 13} true;
  call $i3, $i3.shadow := load_littleendian($p2, $p2.shadow);
  call {:cexpr "x1"} boogie_si_record_i32($i3);
  call {:cexpr "j1"} boogie_si_record_i32($i3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 49, 13} true;
  $p4 := $add.ref(k,4);
  $p4.shadow := $add.ref(k.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 49, 13} true;
  call $i5, $i5.shadow := load_littleendian($p4, $p4.shadow);
  call {:cexpr "x2"} boogie_si_record_i32($i5);
  call {:cexpr "j2"} boogie_si_record_i32($i5);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 50, 13} true;
  $p6 := $add.ref(k,8);
  $p6.shadow := $add.ref(k.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 50, 13} true;
  call $i7, $i7.shadow := load_littleendian($p6, $p6.shadow);
  call {:cexpr "x3"} boogie_si_record_i32($i7);
  call {:cexpr "j3"} boogie_si_record_i32($i7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 51, 13} true;
  $p8 := $add.ref(k,12);
  $p8.shadow := $add.ref(k.shadow,12);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 51, 13} true;
  call $i9, $i9.shadow := load_littleendian($p8, $p8.shadow);
  call {:cexpr "x4"} boogie_si_record_i32($i9);
  call {:cexpr "j4"} boogie_si_record_i32($i9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 52, 13} true;
  $p10 := $add.ref(c,4);
  $p10.shadow := $add.ref(c.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 52, 13} true;
  call $i11, $i11.shadow := load_littleendian($p10, $p10.shadow);
  call {:cexpr "x5"} boogie_si_record_i32($i11);
  call {:cexpr "j5"} boogie_si_record_i32($i11);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 53, 13} true;
  $p12 := in;
  $p12.shadow := in.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 53, 13} true;
  call $i13, $i13.shadow := load_littleendian($p12, $p12.shadow);
  call {:cexpr "x6"} boogie_si_record_i32($i13);
  call {:cexpr "j6"} boogie_si_record_i32($i13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 54, 13} true;
  $p14 := $add.ref(in,4);
  $p14.shadow := $add.ref(in.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 54, 13} true;
  call $i15, $i15.shadow := load_littleendian($p14, $p14.shadow);
  call {:cexpr "x7"} boogie_si_record_i32($i15);
  call {:cexpr "j7"} boogie_si_record_i32($i15);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 55, 13} true;
  $p16 := $add.ref(in,8);
  $p16.shadow := $add.ref(in.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 55, 13} true;
  call $i17, $i17.shadow := load_littleendian($p16, $p16.shadow);
  call {:cexpr "x8"} boogie_si_record_i32($i17);
  call {:cexpr "j8"} boogie_si_record_i32($i17);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 56, 13} true;
  $p18 := $add.ref(in,12);
  $p18.shadow := $add.ref(in.shadow,12);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 56, 13} true;
  call $i19, $i19.shadow := load_littleendian($p18, $p18.shadow);
  call {:cexpr "x9"} boogie_si_record_i32($i19);
  call {:cexpr "j9"} boogie_si_record_i32($i19);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 57, 15} true;
  $p20 := $add.ref(c,8);
  $p20.shadow := $add.ref(c.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 57, 15} true;
  call $i21, $i21.shadow := load_littleendian($p20, $p20.shadow);
  call {:cexpr "x10"} boogie_si_record_i32($i21);
  call {:cexpr "j10"} boogie_si_record_i32($i21);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 58, 15} true;
  $p22 := $add.ref(k,16);
  $p22.shadow := $add.ref(k.shadow,16);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 58, 15} true;
  call $i23, $i23.shadow := load_littleendian($p22, $p22.shadow);
  call {:cexpr "x11"} boogie_si_record_i32($i23);
  call {:cexpr "j11"} boogie_si_record_i32($i23);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 59, 15} true;
  $p24 := $add.ref(k,20);
  $p24.shadow := $add.ref(k.shadow,20);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 59, 15} true;
  call $i25, $i25.shadow := load_littleendian($p24, $p24.shadow);
  call {:cexpr "x12"} boogie_si_record_i32($i25);
  call {:cexpr "j12"} boogie_si_record_i32($i25);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 60, 15} true;
  $p26 := $add.ref(k,24);
  $p26.shadow := $add.ref(k.shadow,24);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 60, 15} true;
  call $i27, $i27.shadow := load_littleendian($p26, $p26.shadow);
  call {:cexpr "x13"} boogie_si_record_i32($i27);
  call {:cexpr "j13"} boogie_si_record_i32($i27);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 61, 15} true;
  $p28 := $add.ref(k,28);
  $p28.shadow := $add.ref(k.shadow,28);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 61, 15} true;
  call $i29, $i29.shadow := load_littleendian($p28, $p28.shadow);
  call {:cexpr "x14"} boogie_si_record_i32($i29);
  call {:cexpr "j14"} boogie_si_record_i32($i29);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 62, 15} true;
  $p30 := $add.ref(c,12);
  $p30.shadow := $add.ref(c.shadow,12);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 62, 15} true;
  call $i31, $i31.shadow := load_littleendian($p30, $p30.shadow);
  call {:cexpr "x15"} boogie_si_record_i32($i31);
  call {:cexpr "j15"} boogie_si_record_i32($i31);
  call {:cexpr "i"} boogie_si_record_i32(20);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 64, 8} true;
  $i32 := $i25;
  $i32.shadow := $i25.shadow;
  $i33 := $i23;
  $i33.shadow := $i23.shadow;
  $i34 := $i21;
  $i34.shadow := $i21.shadow;
  $i35 := $i19;
  $i35.shadow := $i19.shadow;
  $i36 := $i17;
  $i36.shadow := $i17.shadow;
  $i37 := $i15;
  $i37.shadow := $i15.shadow;
  $i38 := $i13;
  $i38.shadow := $i13.shadow;
  $i39 := $i11;
  $i39.shadow := $i11.shadow;
  $i40 := $i9;
  $i40.shadow := $i9.shadow;
  $i41 := $i7;
  $i41.shadow := $i7.shadow;
  $i42 := $i5;
  $i42.shadow := $i5.shadow;
  $i43 := $i3;
  $i43.shadow := $i3.shadow;
  $i44 := $i1;
  $i44.shadow := $i1.shadow;
  $i45 := $i27;
  $i45.shadow := $i27.shadow;
  $i46 := $i29;
  $i46.shadow := $i29.shadow;
  $i47 := $i31;
  $i47.shadow := $i31.shadow;
  $i48 := 20;
  $i48.shadow := 20;
  goto $bb1;
$bb1:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($i48 == $i48.shadow);
  assert {:unlikely_shadow_invariant ($i11 == $i11.shadow)} true;
  assert {:unlikely_shadow_invariant ($i19 == $i19.shadow)} true;
  assert {:unlikely_shadow_invariant ($i39 == $i39.shadow)} true;
  assert {:unlikely_shadow_invariant ($i27 == $i27.shadow)} true;
  assert {:unlikely_shadow_invariant ($i35 == $i35.shadow)} true;
  assert {:unlikely_shadow_invariant ($i45 == $i45.shadow)} true;
  assert {:unlikely_shadow_invariant ($i3 == $i3.shadow)} true;
  assert {:unlikely_shadow_invariant ($i15 == $i15.shadow)} true;
  assert {:unlikely_shadow_invariant ($i43 == $i43.shadow)} true;
  assert {:unlikely_shadow_invariant ($i23 == $i23.shadow)} true;
  assert {:unlikely_shadow_invariant ($i13 == $i13.shadow)} true;
  assert {:unlikely_shadow_invariant ($i21 == $i21.shadow)} true;
  assert {:unlikely_shadow_invariant ($i37 == $i37.shadow)} true;
  assert {:unlikely_shadow_invariant ($i33 == $i33.shadow)} true;
  assert {:unlikely_shadow_invariant ($i38 == $i38.shadow)} true;
  assert {:unlikely_shadow_invariant ($i34 == $i34.shadow)} true;
  assert {:unlikely_shadow_invariant ($i9 == $i9.shadow)} true;
  assert {:unlikely_shadow_invariant ($i5 == $i5.shadow)} true;
  assert {:unlikely_shadow_invariant ($i7 == $i7.shadow)} true;
  assert {:unlikely_shadow_invariant ($i17 == $i17.shadow)} true;
  assert {:unlikely_shadow_invariant ($i29 == $i29.shadow)} true;
  assert {:unlikely_shadow_invariant ($i31 == $i31.shadow)} true;
  assert {:unlikely_shadow_invariant ($i40 == $i40.shadow)} true;
  assert {:unlikely_shadow_invariant ($i42 == $i42.shadow)} true;
  assert {:unlikely_shadow_invariant ($i41 == $i41.shadow)} true;
  assert {:unlikely_shadow_invariant ($i36 == $i36.shadow)} true;
  assert {:unlikely_shadow_invariant ($i46 == $i46.shadow)} true;
  assert {:unlikely_shadow_invariant ($i47 == $i47.shadow)} true;
  assert {:unlikely_shadow_invariant ($i25 == $i25.shadow)} true;
  assert {:unlikely_shadow_invariant ($i1 == $i1.shadow)} true;
  assert {:unlikely_shadow_invariant ($i32 == $i32.shadow)} true;
  assert {:unlikely_shadow_invariant ($i44 == $i44.shadow)} true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 64, 8} true;
  $i49 := $sgt.i32($i48,0);
  $i49.shadow := $sgt.i32($i48.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 64, 8} true;
  assume {:branchcond $i49} true;
  $shadow_ok := ($shadow_ok && ($i49 == $i49.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i49 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 65, 12} true;
  $i50 := $add.i32($i44,$i32);
  $i50.shadow := $add.i32($i44.shadow,$i32.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 65, 12} true;
  call $i51, $i51.shadow := rotate($i50, $i50.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 65, 12} true;
  $i52 := $xor.i32($i40,$i51);
  $i52.shadow := $xor.i32($i40.shadow,$i51.shadow);
  call {:cexpr "x4"} boogie_si_record_i32($i52);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 66, 12} true;
  $i53 := $add.i32($i52,$i44);
  $i53.shadow := $add.i32($i52.shadow,$i44.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 66, 12} true;
  call $i54, $i54.shadow := rotate($i53, $i53.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 66, 12} true;
  $i55 := $xor.i32($i36,$i54);
  $i55.shadow := $xor.i32($i36.shadow,$i54.shadow);
  call {:cexpr "x8"} boogie_si_record_i32($i55);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 67, 12} true;
  $i56 := $add.i32($i55,$i52);
  $i56.shadow := $add.i32($i55.shadow,$i52.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 67, 12} true;
  call $i57, $i57.shadow := rotate($i56, $i56.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 67, 12} true;
  $i58 := $xor.i32($i32,$i57);
  $i58.shadow := $xor.i32($i32.shadow,$i57.shadow);
  call {:cexpr "x12"} boogie_si_record_i32($i58);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 68, 12} true;
  $i59 := $add.i32($i58,$i55);
  $i59.shadow := $add.i32($i58.shadow,$i55.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 68, 12} true;
  call $i60, $i60.shadow := rotate($i59, $i59.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 68, 12} true;
  $i61 := $xor.i32($i44,$i60);
  $i61.shadow := $xor.i32($i44.shadow,$i60.shadow);
  call {:cexpr "x0"} boogie_si_record_i32($i61);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 69, 12} true;
  $i62 := $add.i32($i39,$i43);
  $i62.shadow := $add.i32($i39.shadow,$i43.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 69, 12} true;
  call $i63, $i63.shadow := rotate($i62, $i62.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 69, 12} true;
  $i64 := $xor.i32($i35,$i63);
  $i64.shadow := $xor.i32($i35.shadow,$i63.shadow);
  call {:cexpr "x9"} boogie_si_record_i32($i64);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 70, 12} true;
  $i65 := $add.i32($i64,$i39);
  $i65.shadow := $add.i32($i64.shadow,$i39.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 70, 12} true;
  call $i66, $i66.shadow := rotate($i65, $i65.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 70, 12} true;
  $i67 := $xor.i32($i45,$i66);
  $i67.shadow := $xor.i32($i45.shadow,$i66.shadow);
  call {:cexpr "x13"} boogie_si_record_i32($i67);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 71, 12} true;
  $i68 := $add.i32($i67,$i64);
  $i68.shadow := $add.i32($i67.shadow,$i64.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 71, 12} true;
  call $i69, $i69.shadow := rotate($i68, $i68.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 71, 12} true;
  $i70 := $xor.i32($i43,$i69);
  $i70.shadow := $xor.i32($i43.shadow,$i69.shadow);
  call {:cexpr "x1"} boogie_si_record_i32($i70);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 72, 12} true;
  $i71 := $add.i32($i70,$i67);
  $i71.shadow := $add.i32($i70.shadow,$i67.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 72, 12} true;
  call $i72, $i72.shadow := rotate($i71, $i71.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 72, 12} true;
  $i73 := $xor.i32($i39,$i72);
  $i73.shadow := $xor.i32($i39.shadow,$i72.shadow);
  call {:cexpr "x5"} boogie_si_record_i32($i73);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 73, 12} true;
  $i74 := $add.i32($i34,$i38);
  $i74.shadow := $add.i32($i34.shadow,$i38.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 73, 12} true;
  call $i75, $i75.shadow := rotate($i74, $i74.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 73, 12} true;
  $i76 := $xor.i32($i46,$i75);
  $i76.shadow := $xor.i32($i46.shadow,$i75.shadow);
  call {:cexpr "x14"} boogie_si_record_i32($i76);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 74, 12} true;
  $i77 := $add.i32($i76,$i34);
  $i77.shadow := $add.i32($i76.shadow,$i34.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 74, 12} true;
  call $i78, $i78.shadow := rotate($i77, $i77.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 74, 12} true;
  $i79 := $xor.i32($i42,$i78);
  $i79.shadow := $xor.i32($i42.shadow,$i78.shadow);
  call {:cexpr "x2"} boogie_si_record_i32($i79);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 75, 12} true;
  $i80 := $add.i32($i79,$i76);
  $i80.shadow := $add.i32($i79.shadow,$i76.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 75, 12} true;
  call $i81, $i81.shadow := rotate($i80, $i80.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 75, 12} true;
  $i82 := $xor.i32($i38,$i81);
  $i82.shadow := $xor.i32($i38.shadow,$i81.shadow);
  call {:cexpr "x6"} boogie_si_record_i32($i82);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 76, 12} true;
  $i83 := $add.i32($i82,$i79);
  $i83.shadow := $add.i32($i82.shadow,$i79.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 76, 12} true;
  call $i84, $i84.shadow := rotate($i83, $i83.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 76, 12} true;
  $i85 := $xor.i32($i34,$i84);
  $i85.shadow := $xor.i32($i34.shadow,$i84.shadow);
  call {:cexpr "x10"} boogie_si_record_i32($i85);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 77, 12} true;
  $i86 := $add.i32($i47,$i33);
  $i86.shadow := $add.i32($i47.shadow,$i33.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 77, 12} true;
  call $i87, $i87.shadow := rotate($i86, $i86.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 77, 12} true;
  $i88 := $xor.i32($i41,$i87);
  $i88.shadow := $xor.i32($i41.shadow,$i87.shadow);
  call {:cexpr "x3"} boogie_si_record_i32($i88);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 78, 12} true;
  $i89 := $add.i32($i88,$i47);
  $i89.shadow := $add.i32($i88.shadow,$i47.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 78, 12} true;
  call $i90, $i90.shadow := rotate($i89, $i89.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 78, 12} true;
  $i91 := $xor.i32($i37,$i90);
  $i91.shadow := $xor.i32($i37.shadow,$i90.shadow);
  call {:cexpr "x7"} boogie_si_record_i32($i91);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 79, 12} true;
  $i92 := $add.i32($i91,$i88);
  $i92.shadow := $add.i32($i91.shadow,$i88.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 79, 12} true;
  call $i93, $i93.shadow := rotate($i92, $i92.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 79, 12} true;
  $i94 := $xor.i32($i33,$i93);
  $i94.shadow := $xor.i32($i33.shadow,$i93.shadow);
  call {:cexpr "x11"} boogie_si_record_i32($i94);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 80, 12} true;
  $i95 := $add.i32($i94,$i91);
  $i95.shadow := $add.i32($i94.shadow,$i91.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 80, 12} true;
  call $i96, $i96.shadow := rotate($i95, $i95.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 80, 12} true;
  $i97 := $xor.i32($i47,$i96);
  $i97.shadow := $xor.i32($i47.shadow,$i96.shadow);
  call {:cexpr "x15"} boogie_si_record_i32($i97);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 81, 12} true;
  $i98 := $add.i32($i61,$i88);
  $i98.shadow := $add.i32($i61.shadow,$i88.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 81, 12} true;
  call $i99, $i99.shadow := rotate($i98, $i98.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 81, 12} true;
  $i100 := $xor.i32($i70,$i99);
  $i100.shadow := $xor.i32($i70.shadow,$i99.shadow);
  call {:cexpr "x1"} boogie_si_record_i32($i100);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 82, 12} true;
  $i101 := $add.i32($i100,$i61);
  $i101.shadow := $add.i32($i100.shadow,$i61.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 82, 12} true;
  call $i102, $i102.shadow := rotate($i101, $i101.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 82, 12} true;
  $i103 := $xor.i32($i79,$i102);
  $i103.shadow := $xor.i32($i79.shadow,$i102.shadow);
  call {:cexpr "x2"} boogie_si_record_i32($i103);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 83, 12} true;
  $i104 := $add.i32($i103,$i100);
  $i104.shadow := $add.i32($i103.shadow,$i100.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 83, 12} true;
  call $i105, $i105.shadow := rotate($i104, $i104.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 83, 12} true;
  $i106 := $xor.i32($i88,$i105);
  $i106.shadow := $xor.i32($i88.shadow,$i105.shadow);
  call {:cexpr "x3"} boogie_si_record_i32($i106);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 84, 12} true;
  $i107 := $add.i32($i106,$i103);
  $i107.shadow := $add.i32($i106.shadow,$i103.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 84, 12} true;
  call $i108, $i108.shadow := rotate($i107, $i107.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 84, 12} true;
  $i109 := $xor.i32($i61,$i108);
  $i109.shadow := $xor.i32($i61.shadow,$i108.shadow);
  call {:cexpr "x0"} boogie_si_record_i32($i109);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 85, 12} true;
  $i110 := $add.i32($i73,$i52);
  $i110.shadow := $add.i32($i73.shadow,$i52.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 85, 12} true;
  call $i111, $i111.shadow := rotate($i110, $i110.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 85, 12} true;
  $i112 := $xor.i32($i82,$i111);
  $i112.shadow := $xor.i32($i82.shadow,$i111.shadow);
  call {:cexpr "x6"} boogie_si_record_i32($i112);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 86, 12} true;
  $i113 := $add.i32($i112,$i73);
  $i113.shadow := $add.i32($i112.shadow,$i73.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 86, 12} true;
  call $i114, $i114.shadow := rotate($i113, $i113.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 86, 12} true;
  $i115 := $xor.i32($i91,$i114);
  $i115.shadow := $xor.i32($i91.shadow,$i114.shadow);
  call {:cexpr "x7"} boogie_si_record_i32($i115);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 87, 12} true;
  $i116 := $add.i32($i115,$i112);
  $i116.shadow := $add.i32($i115.shadow,$i112.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 87, 12} true;
  call $i117, $i117.shadow := rotate($i116, $i116.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 87, 12} true;
  $i118 := $xor.i32($i52,$i117);
  $i118.shadow := $xor.i32($i52.shadow,$i117.shadow);
  call {:cexpr "x4"} boogie_si_record_i32($i118);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 88, 12} true;
  $i119 := $add.i32($i118,$i115);
  $i119.shadow := $add.i32($i118.shadow,$i115.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 88, 12} true;
  call $i120, $i120.shadow := rotate($i119, $i119.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 88, 12} true;
  $i121 := $xor.i32($i73,$i120);
  $i121.shadow := $xor.i32($i73.shadow,$i120.shadow);
  call {:cexpr "x5"} boogie_si_record_i32($i121);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 89, 12} true;
  $i122 := $add.i32($i85,$i64);
  $i122.shadow := $add.i32($i85.shadow,$i64.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 89, 12} true;
  call $i123, $i123.shadow := rotate($i122, $i122.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 89, 12} true;
  $i124 := $xor.i32($i94,$i123);
  $i124.shadow := $xor.i32($i94.shadow,$i123.shadow);
  call {:cexpr "x11"} boogie_si_record_i32($i124);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 90, 12} true;
  $i125 := $add.i32($i124,$i85);
  $i125.shadow := $add.i32($i124.shadow,$i85.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 90, 12} true;
  call $i126, $i126.shadow := rotate($i125, $i125.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 90, 12} true;
  $i127 := $xor.i32($i55,$i126);
  $i127.shadow := $xor.i32($i55.shadow,$i126.shadow);
  call {:cexpr "x8"} boogie_si_record_i32($i127);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 91, 12} true;
  $i128 := $add.i32($i127,$i124);
  $i128.shadow := $add.i32($i127.shadow,$i124.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 91, 12} true;
  call $i129, $i129.shadow := rotate($i128, $i128.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 91, 12} true;
  $i130 := $xor.i32($i64,$i129);
  $i130.shadow := $xor.i32($i64.shadow,$i129.shadow);
  call {:cexpr "x9"} boogie_si_record_i32($i130);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 92, 12} true;
  $i131 := $add.i32($i130,$i127);
  $i131.shadow := $add.i32($i130.shadow,$i127.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 92, 12} true;
  call $i132, $i132.shadow := rotate($i131, $i131.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 92, 12} true;
  $i133 := $xor.i32($i85,$i132);
  $i133.shadow := $xor.i32($i85.shadow,$i132.shadow);
  call {:cexpr "x10"} boogie_si_record_i32($i133);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 93, 12} true;
  $i134 := $add.i32($i97,$i76);
  $i134.shadow := $add.i32($i97.shadow,$i76.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 93, 12} true;
  call $i135, $i135.shadow := rotate($i134, $i134.shadow, 7, 7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 93, 12} true;
  $i136 := $xor.i32($i58,$i135);
  $i136.shadow := $xor.i32($i58.shadow,$i135.shadow);
  call {:cexpr "x12"} boogie_si_record_i32($i136);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 94, 12} true;
  $i137 := $add.i32($i136,$i97);
  $i137.shadow := $add.i32($i136.shadow,$i97.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 94, 12} true;
  call $i138, $i138.shadow := rotate($i137, $i137.shadow, 9, 9);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 94, 12} true;
  $i139 := $xor.i32($i67,$i138);
  $i139.shadow := $xor.i32($i67.shadow,$i138.shadow);
  call {:cexpr "x13"} boogie_si_record_i32($i139);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 95, 12} true;
  $i140 := $add.i32($i139,$i136);
  $i140.shadow := $add.i32($i139.shadow,$i136.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 95, 12} true;
  call $i141, $i141.shadow := rotate($i140, $i140.shadow, 13, 13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 95, 12} true;
  $i142 := $xor.i32($i76,$i141);
  $i142.shadow := $xor.i32($i76.shadow,$i141.shadow);
  call {:cexpr "x14"} boogie_si_record_i32($i142);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 96, 12} true;
  $i143 := $add.i32($i142,$i139);
  $i143.shadow := $add.i32($i142.shadow,$i139.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 96, 12} true;
  call $i144, $i144.shadow := rotate($i143, $i143.shadow, 18, 18);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 96, 12} true;
  $i145 := $xor.i32($i97,$i144);
  $i145.shadow := $xor.i32($i97.shadow,$i144.shadow);
  call {:cexpr "x15"} boogie_si_record_i32($i145);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 64, 25} true;
  $i146 := $sub.i32($i48,2);
  $i146.shadow := $sub.i32($i48.shadow,2);
  call {:cexpr "i"} boogie_si_record_i32($i146);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 64, 25} true;
  $i32 := $i136;
  $i32.shadow := $i136.shadow;
  $i33 := $i124;
  $i33.shadow := $i124.shadow;
  $i34 := $i133;
  $i34.shadow := $i133.shadow;
  $i35 := $i130;
  $i35.shadow := $i130.shadow;
  $i36 := $i127;
  $i36.shadow := $i127.shadow;
  $i37 := $i115;
  $i37.shadow := $i115.shadow;
  $i38 := $i112;
  $i38.shadow := $i112.shadow;
  $i39 := $i121;
  $i39.shadow := $i121.shadow;
  $i40 := $i118;
  $i40.shadow := $i118.shadow;
  $i41 := $i106;
  $i41.shadow := $i106.shadow;
  $i42 := $i103;
  $i42.shadow := $i103.shadow;
  $i43 := $i100;
  $i43.shadow := $i100.shadow;
  $i44 := $i109;
  $i44.shadow := $i109.shadow;
  $i45 := $i139;
  $i45.shadow := $i139.shadow;
  $i46 := $i142;
  $i46.shadow := $i142.shadow;
  $i47 := $i145;
  $i47.shadow := $i145.shadow;
  $i48 := $i146;
  $i48.shadow := $i146.shadow;
  goto $bb1;
$bb3:
  assume !($i49 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 99, 3} true;
  $i147 := $add.i32($i44,$i1);
  $i147.shadow := $add.i32($i44.shadow,$i1.shadow);
  call {:cexpr "x0"} boogie_si_record_i32($i147);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 100, 3} true;
  $i148 := $add.i32($i43,$i3);
  $i148.shadow := $add.i32($i43.shadow,$i3.shadow);
  call {:cexpr "x1"} boogie_si_record_i32($i148);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 101, 3} true;
  $i149 := $add.i32($i42,$i5);
  $i149.shadow := $add.i32($i42.shadow,$i5.shadow);
  call {:cexpr "x2"} boogie_si_record_i32($i149);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 102, 3} true;
  $i150 := $add.i32($i41,$i7);
  $i150.shadow := $add.i32($i41.shadow,$i7.shadow);
  call {:cexpr "x3"} boogie_si_record_i32($i150);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 103, 3} true;
  $i151 := $add.i32($i40,$i9);
  $i151.shadow := $add.i32($i40.shadow,$i9.shadow);
  call {:cexpr "x4"} boogie_si_record_i32($i151);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 104, 3} true;
  $i152 := $add.i32($i39,$i11);
  $i152.shadow := $add.i32($i39.shadow,$i11.shadow);
  call {:cexpr "x5"} boogie_si_record_i32($i152);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 105, 3} true;
  $i153 := $add.i32($i38,$i13);
  $i153.shadow := $add.i32($i38.shadow,$i13.shadow);
  call {:cexpr "x6"} boogie_si_record_i32($i153);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 106, 3} true;
  $i154 := $add.i32($i37,$i15);
  $i154.shadow := $add.i32($i37.shadow,$i15.shadow);
  call {:cexpr "x7"} boogie_si_record_i32($i154);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 107, 3} true;
  $i155 := $add.i32($i36,$i17);
  $i155.shadow := $add.i32($i36.shadow,$i17.shadow);
  call {:cexpr "x8"} boogie_si_record_i32($i155);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 108, 3} true;
  $i156 := $add.i32($i35,$i19);
  $i156.shadow := $add.i32($i35.shadow,$i19.shadow);
  call {:cexpr "x9"} boogie_si_record_i32($i156);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 109, 3} true;
  $i157 := $add.i32($i34,$i21);
  $i157.shadow := $add.i32($i34.shadow,$i21.shadow);
  call {:cexpr "x10"} boogie_si_record_i32($i157);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 110, 3} true;
  $i158 := $add.i32($i33,$i23);
  $i158.shadow := $add.i32($i33.shadow,$i23.shadow);
  call {:cexpr "x11"} boogie_si_record_i32($i158);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 111, 3} true;
  $i159 := $add.i32($i32,$i25);
  $i159.shadow := $add.i32($i32.shadow,$i25.shadow);
  call {:cexpr "x12"} boogie_si_record_i32($i159);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 112, 3} true;
  $i160 := $add.i32($i45,$i27);
  $i160.shadow := $add.i32($i45.shadow,$i27.shadow);
  call {:cexpr "x13"} boogie_si_record_i32($i160);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 113, 3} true;
  $i161 := $add.i32($i46,$i29);
  $i161.shadow := $add.i32($i46.shadow,$i29.shadow);
  call {:cexpr "x14"} boogie_si_record_i32($i161);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 114, 3} true;
  $i162 := $add.i32($i47,$i31);
  $i162.shadow := $add.i32($i47.shadow,$i31.shadow);
  call {:cexpr "x15"} boogie_si_record_i32($i162);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 116, 3} true;
  $p163 := out;
  $p163.shadow := out.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 116, 3} true;
  call store_littleendian($p163, $p163.shadow, $i147, $i147.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 117, 3} true;
  $p164 := $add.ref(out,4);
  $p164.shadow := $add.ref(out.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 117, 3} true;
  call store_littleendian($p164, $p164.shadow, $i148, $i148.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 118, 3} true;
  $p165 := $add.ref(out,8);
  $p165.shadow := $add.ref(out.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 118, 3} true;
  call store_littleendian($p165, $p165.shadow, $i149, $i149.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 119, 3} true;
  $p166 := $add.ref(out,12);
  $p166.shadow := $add.ref(out.shadow,12);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 119, 3} true;
  call store_littleendian($p166, $p166.shadow, $i150, $i150.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 120, 3} true;
  $p167 := $add.ref(out,16);
  $p167.shadow := $add.ref(out.shadow,16);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 120, 3} true;
  call store_littleendian($p167, $p167.shadow, $i151, $i151.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 121, 3} true;
  $p168 := $add.ref(out,20);
  $p168.shadow := $add.ref(out.shadow,20);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 121, 3} true;
  call store_littleendian($p168, $p168.shadow, $i152, $i152.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 122, 3} true;
  $p169 := $add.ref(out,24);
  $p169.shadow := $add.ref(out.shadow,24);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 122, 3} true;
  call store_littleendian($p169, $p169.shadow, $i153, $i153.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 123, 3} true;
  $p170 := $add.ref(out,28);
  $p170.shadow := $add.ref(out.shadow,28);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 123, 3} true;
  call store_littleendian($p170, $p170.shadow, $i154, $i154.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 124, 3} true;
  $p171 := $add.ref(out,32);
  $p171.shadow := $add.ref(out.shadow,32);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 124, 3} true;
  call store_littleendian($p171, $p171.shadow, $i155, $i155.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 125, 3} true;
  $p172 := $add.ref(out,36);
  $p172.shadow := $add.ref(out.shadow,36);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 125, 3} true;
  call store_littleendian($p172, $p172.shadow, $i156, $i156.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 126, 3} true;
  $p173 := $add.ref(out,40);
  $p173.shadow := $add.ref(out.shadow,40);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 126, 3} true;
  call store_littleendian($p173, $p173.shadow, $i157, $i157.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 127, 3} true;
  $p174 := $add.ref(out,44);
  $p174.shadow := $add.ref(out.shadow,44);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 127, 3} true;
  call store_littleendian($p174, $p174.shadow, $i158, $i158.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 128, 3} true;
  $p175 := $add.ref(out,48);
  $p175.shadow := $add.ref(out.shadow,48);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 128, 3} true;
  call store_littleendian($p175, $p175.shadow, $i159, $i159.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 129, 3} true;
  $p176 := $add.ref(out,52);
  $p176.shadow := $add.ref(out.shadow,52);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 129, 3} true;
  call store_littleendian($p176, $p176.shadow, $i160, $i160.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 130, 3} true;
  $p177 := $add.ref(out,56);
  $p177.shadow := $add.ref(out.shadow,56);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 130, 3} true;
  call store_littleendian($p177, $p177.shadow, $i161, $i161.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 131, 3} true;
  $p178 := $add.ref(out,60);
  $p178.shadow := $add.ref(out.shadow,60);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 131, 3} true;
  call store_littleendian($p178, $p178.shadow, $i162, $i162.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 133, 3} true;
  $r := 0;
  $r.shadow := 0;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:entrypoint} crypto_core_salsa20_wrapper(out: ref, out.shadow: ref, in: ref, in.shadow: ref, k: ref, k.shadow: ref, c: ref, c.shadow: ref) returns ($r: i32, $r.shadow: i32)
requires {:public_in out} true;
requires {:public_in in} true;
requires {:public_in k} true;
requires {:public_in c} true;
modifies $exn;
modifies $CurrAddr, $M.21, $M.7, $M.6, $M.22, $M.23, $M.18, $M.24, $M.25, $M.19, $M.26, $M.20, $M.13, $M.17, $M.27;
requires (out == out.shadow);
requires (in == in.shadow);
requires (k == k.shadow);
requires (c == c.shadow);
{
  var $i4: i32;
  var $i4.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
$bb0:
  $shadow_ok := true;
  call $initialize();
  call {:cexpr "out"} boogie_si_record_ref(out);
  call {:cexpr "in"} boogie_si_record_ref(in);
  call {:cexpr "k"} boogie_si_record_ref(k);
  call {:cexpr "c"} boogie_si_record_ref(c);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 8, 13} true;
  call {:name out} $p0, $p0.shadow := __SMACK_value.ref(out, out.shadow);
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 8, 3} true;
  call public_in($p0, $p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 9, 13} true;
  call {:name in} $p1, $p1.shadow := __SMACK_value.ref(in, in.shadow);
  assume $isExternal($p1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 9, 3} true;
  call public_in($p1, $p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 10, 13} true;
  call {:name k} $p2, $p2.shadow := __SMACK_value.ref(k, k.shadow);
  assume $isExternal($p2);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 10, 3} true;
  call public_in($p2, $p2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 11, 13} true;
  call {:name c} $p3, $p3.shadow := __SMACK_value.ref(c, c.shadow);
  assume $isExternal($p3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 11, 3} true;
  call public_in($p3, $p3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 13, 10} true;
  call $i4, $i4.shadow := crypto_core_salsa20(out, out.shadow, in, in.shadow, k, k.shadow, c, c.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/salsa20.c", 13, 10} true;
  $r := $i4;
  $r.shadow := $i4.shadow;
  $exn := false;
  $exn.shadow := false;
  assert $shadow_ok;
  return;
}
procedure {:inline 1} fcntl.i32.i32($i0: i32, $i0.shadow: i32, $i1: i32, $i1.shadow: i32) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} fcntl.i32.i32.i32($i0: i32, $i0.shadow: i32, $i1: i32, $i1.shadow: i32, p.2: i32, p.2.shadow: i32) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} free_($p0: ref, $p0.shadow: ref)
modifies $Alloc;
{
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  call $free($p0);
}
procedure {:inline 1} fstat($i0: i32, $i0.shadow: i32, $p1: ref, $p1.shadow: ref) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} llvm.dbg.declare($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref);
procedure {:inline 1} llvm.dbg.value($p0: ref, $p0.shadow: ref, $i1: i64, $i1.shadow: i64, $p2: ref, $p2.shadow: ref);
procedure {:inline 1} llvm.memset.p0i8.i64($p0: ref, $p0.shadow: ref, $i1: i8, $i1.shadow: i8, $i2: i64, $i2.shadow: i64, $i3: i32, $i3.shadow: i32, $i4: i1, $i4.shadow: i1);
procedure {:inline 1} load_littleendian(x: ref, x.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $exn;
{
  var $i1: i8;
  var $i1.shadow: i8;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i14: i8;
  var $i14.shadow: i8;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i16: i32;
  var $i16.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i4: i8;
  var $i4.shadow: i8;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i9: i8;
  var $i9.shadow: i8;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p13: ref;
  var $p13.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
$bb0:
  call {:cexpr "x"} boogie_si_record_ref(x);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $p0 := x;
  $p0.shadow := x.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $i1 := $load.i8($M.20,$p0);
  $i1.shadow := $load.i8($M.20.shadow,$p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i2 := $zext.i8.i32($i1);
  $i2.shadow := $zext.i8.i32($i1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $p3 := $add.ref(x,1);
  $p3.shadow := $add.ref(x.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $shadow_ok := ($shadow_ok && ($p3 == $p3.shadow));
  $i4 := $load.i8($M.20,$p3);
  $i4.shadow := $load.i8($M.20.shadow,$p3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i5 := $zext.i8.i32($i4);
  $i5.shadow := $zext.i8.i32($i4.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i6 := $shl.i32($i5,8);
  $i6.shadow := $shl.i32($i5.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i7 := $or.i32($i2,$i6);
  $i7.shadow := $or.i32($i2.shadow,$i6.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $p8 := $add.ref(x,2);
  $p8.shadow := $add.ref(x.shadow,2);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $shadow_ok := ($shadow_ok && ($p8 == $p8.shadow));
  $i9 := $load.i8($M.20,$p8);
  $i9.shadow := $load.i8($M.20.shadow,$p8.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i10 := $zext.i8.i32($i9);
  $i10.shadow := $zext.i8.i32($i9.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i11 := $shl.i32($i10,16);
  $i11.shadow := $shl.i32($i10.shadow,16);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i12 := $or.i32($i7,$i11);
  $i12.shadow := $or.i32($i7.shadow,$i11.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $p13 := $add.ref(x,3);
  $p13.shadow := $add.ref(x.shadow,3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $shadow_ok := ($shadow_ok && ($p13 == $p13.shadow));
  $i14 := $load.i8($M.20,$p13);
  $i14.shadow := $load.i8($M.20.shadow,$p13.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i15 := $zext.i8.i32($i14);
  $i15.shadow := $zext.i8.i32($i14.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i16 := $shl.i32($i15,24);
  $i16.shadow := $shl.i32($i15.shadow,24);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $i17 := $or.i32($i12,$i16);
  $i17.shadow := $or.i32($i12.shadow,$i16.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 20, 3} true;
  $r := $i17;
  $r.shadow := $i17.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} malloc($i0: i64, $i0.shadow: i64) returns ($r: ref, $r.shadow: ref)
modifies $CurrAddr, $Alloc;
{
  $shadow_ok := ($shadow_ok && ($i0 == $i0.shadow));
  call $r := $alloc($i0);
  $r.shadow := $r;
}
procedure {:inline 1} open.ref.i32($p0: ref, $p0.shadow: ref, $i1: i32, $i1.shadow: i32) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} public_in($p0: ref, $p0.shadow: ref);
procedure {:inline 1} randombytes_buf(buf: ref, buf.shadow: ref, size: i64, size.shadow: i64)
modifies $exn;
modifies $M.6, $M.7, $M.10;
modifies $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i0: i1;
  var $i0.shadow: i1;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
$bb0:
  call {:cexpr "buf"} boogie_si_record_ref(buf);
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 117, 9} true;
  $i0 := $ugt.i64(size,0);
  $i0.shadow := $ugt.i64(size.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 117, 9} true;
  assume {:branchcond $i0} true;
  $shadow_ok := ($shadow_ok && ($i0 == $i0.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i0 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 118, 9} true;
  $shadow_ok := ($shadow_ok && (implementation_ == implementation_));
  $p1 := $load.ref($M.17,implementation_);
  $p1.shadow := $load.ref($M.17.shadow,implementation_);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 118, 9} true;
  $p2 := $add.ref($p1,32);
  $p2.shadow := $add.ref($p1.shadow,32);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 118, 9} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  $p3 := $load.ref($M.19,$p2);
  $p3.shadow := $load.ref($M.19.shadow,$p2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 118, 9} true;
  call randombytes_sysrandom_buf(buf, buf.shadow, size, size.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 119, 5} true;
  goto $bb3;
$bb2:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 117, 9} true;
  assume !($i0 == 1);
  goto $bb3;
$bb3:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 128, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_random() returns ($r: i32, $r.shadow: i32)
modifies $exn;
modifies $M.7, $M.6;
modifies $CurrAddr, $Alloc, $M.10;
modifies $M.16;
{
  var $i3: i32;
  var $i3.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 44, 12} true;
  $shadow_ok := ($shadow_ok && (implementation_ == implementation_));
  $p0 := $load.ref($M.17,implementation_);
  $p0.shadow := $load.ref($M.17.shadow,implementation_);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 44, 12} true;
  $p1 := $add.ref($p0,8);
  $p1.shadow := $add.ref($p0.shadow,8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 44, 12} true;
  $shadow_ok := ($shadow_ok && ($p1 == $p1.shadow));
  $p2 := $load.ref($M.18,$p1);
  $p2.shadow := $load.ref($M.18.shadow,$p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 44, 12} true;
  assume {:branchcond $p2} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  goto $bb2, $bb3;
$bb1:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/randombytes.c", 44, 12} true;
  $r := $i3;
  $r.shadow := $i3.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb2:
  assume ($p2 == randombytes_sysrandom_close);
  call $i3, $i3.shadow := randombytes_sysrandom_close();
  goto $bb1;
$bb3:
  assume ($p2 == randombytes_sysrandom);
  call $i3, $i3.shadow := randombytes_sysrandom();
  goto $bb1;
}
procedure {:inline 1} randombytes_sysrandom() returns ($r: i32, $r.shadow: i32)
modifies $exn;
modifies $CurrAddr, $Alloc;
modifies $M.6, $M.7, $M.10;
modifies $M.16;
{
  var $i2: i32;
  var $i2.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
$bb0:
  call $p0 := $alloc($mul.ref(4,$zext.i32.i64(1)));
  $p0.shadow := $p0;
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 253, 5} true;
  $p1 := $bitcast.ref.ref($p0);
  $p1.shadow := $bitcast.ref.ref($p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 253, 5} true;
  call randombytes_sysrandom_buf($p1, $p1.shadow, 4, 4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 255, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $i2 := $load.i32($M.8,$p0);
  $i2.shadow := $load.i32($M.8.shadow,$p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 255, 5} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_sysrandom_buf(buf: ref, buf.shadow: ref, size: i64, size.shadow: i64)
modifies $exn;
modifies $M.6, $M.7, $M.10;
modifies $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i1;
  var $i4.shadow: i1;
$bb0:
  call {:cexpr "buf"} boogie_si_record_ref(buf);
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 261, 5} true;
  call randombytes_sysrandom_stir_if_needed();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 275, 9} true;
  $i0 := $M.7;
  $i0.shadow := $M.7.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 275, 9} true;
  $i1 := $eq.i32($i0,$sub.i32(0,1));
  $i1.shadow := $eq.i32($i0.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 275, 9} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb1, $bb3;
$bb1:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 275, 9} true;
  assume ($i1 == 1);
  goto $bb2;
$bb2:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 277, 9} true;
  call abort();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 277, 9} true;
  assume false;
$bb3:
  assume !($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 276, 9} true;
  $i2 := $M.7;
  $i2.shadow := $M.7.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 276, 9} true;
  call $i3, $i3.shadow := safe_read($i2, $i2.shadow, buf, buf.shadow, size, size.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 276, 9} true;
  $i4 := $ne.i64($i3,size);
  $i4.shadow := $ne.i64($i3.shadow,size.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 276, 9} true;
  assume {:branchcond $i4} true;
  $shadow_ok := ($shadow_ok && ($i4 == $i4.shadow));
  goto $bb4, $bb5;
$bb4:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 276, 9} true;
  assume ($i4 == 1);
  goto $bb2;
$bb5:
  assume !($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 287, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_sysrandom_close() returns ($r: i32, $r.shadow: i32)
modifies $exn, $M.7, $M.6;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i32;
  var $i4.shadow: i32;
  var $i5: i1;
  var $i5.shadow: i1;
$bb0:
  call {:cexpr "ret"} boogie_si_record_i32($sub.i32(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 228, 9} true;
  $i0 := $M.7;
  $i0.shadow := $M.7.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 228, 9} true;
  $i1 := $ne.i32($i0,$sub.i32(0,1));
  $i1.shadow := $ne.i32($i0.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 228, 9} true;
  $i2 := $sub.i32(0,1);
  $i2.shadow := $sub.i32(0,1);
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 229, 9} true;
  $i3 := $M.7;
  $i3.shadow := $M.7.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 229, 9} true;
  call $i4, $i4.shadow := close($i3, $i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 229, 9} true;
  $i5 := $eq.i32($i4,0);
  $i5.shadow := $eq.i32($i4.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 229, 9} true;
  $i2 := $sub.i32(0,1);
  $i2.shadow := $sub.i32(0,1);
  assume {:branchcond $i5} true;
  $shadow_ok := ($shadow_ok && ($i5 == $i5.shadow));
  goto $bb4, $bb5;
$bb2:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 228, 9} true;
  assume !($i1 == 1);
  goto $bb3;
$bb3:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 245, 5} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb4:
  assume ($i5 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 230, 9} true;
  $M.7 := $sub.i32(0,1);
  $M.7.shadow := $sub.i32(0,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 231, 9} true;
  $M.6 := 0;
  $M.6.shadow := 0;
  call {:cexpr "ret"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 233, 5} true;
  $i2 := 0;
  $i2.shadow := 0;
  goto $bb3;
$bb5:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 229, 9} true;
  assume !($i5 == 1);
  goto $bb3;
}
procedure {:inline 1} randombytes_sysrandom_implementation_name() returns ($r: ref, $r.shadow: ref)
modifies $exn;
{
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 294, 5} true;
  $r := .str990;
  $r.shadow := .str990;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_sysrandom_init()
modifies $M.7, $M.10, $exn;
modifies $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i1: i32;
  var $i1.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i1;
  var $i3.shadow: i1;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 175, 32} true;
  call $p0, $p0.shadow := __errno_location();
  assume $isExternal($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 175, 32} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $i1 := $load.i32($M.9,$p0);
  $i1.shadow := $load.i32($M.9.shadow,$p0.shadow);
  call {:cexpr "errno_save"} boogie_si_record_i32($i1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 191, 10} true;
  call $i2, $i2.shadow := randombytes_sysrandom_random_dev_open();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 191, 10} true;
  $M.7 := $i2;
  $M.7.shadow := $i2.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 191, 10} true;
  $i3 := $eq.i32($i2,$sub.i32(0,1));
  $i3.shadow := $eq.i32($i2.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 191, 10} true;
  assume {:branchcond $i3} true;
  $shadow_ok := ($shadow_ok && ($i3 == $i3.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i3 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 192, 9} true;
  call abort();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 192, 9} true;
  assume false;
$bb2:
  assume !($i3 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 194, 5} true;
  call $p4, $p4.shadow := __errno_location();
  assume $isExternal($p4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 194, 5} true;
  $shadow_ok := ($shadow_ok && ($p4 == $p4.shadow));
  $M.10 := $store.i32($M.10,$p4,$i1);
  $M.10.shadow := $store.i32($M.10.shadow,$p4.shadow,$i1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 195, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_sysrandom_random_dev_open() returns ($r: i32, $r.shadow: i32)
modifies $exn, $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i10: i1;
  var $i10.shadow: i1;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i14: i32;
  var $i14.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i18: i1;
  var $i18.shadow: i1;
  var $i22: i1;
  var $i22.shadow: i1;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i1;
  var $i4.shadow: i1;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i1;
  var $i6.shadow: i1;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p16: ref;
  var $p16.shadow: ref;
  var $p19: ref;
  var $p19.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p20: ref;
  var $p20.shadow: ref;
  var $p21: ref;
  var $p21.shadow: ref;
  var $p23: ref;
  var $p23.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  call $p0 := $alloc($mul.ref(144,$zext.i32.i64(1)));
  $p0.shadow := $p0;
  assume true;
  call {:cexpr "device"} boogie_si_record_ref(randombytes_sysrandom_random_dev_open.devices);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 115, 5} true;
  $p1 := randombytes_sysrandom_random_dev_open.devices;
  $p1.shadow := randombytes_sysrandom_random_dev_open.devices;
  goto $bb1;
$bb1:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($p0 == $p0.shadow);
  assert {:shadow_invariant} ($p1 == $p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 116, 14} true;
  $shadow_ok := ($shadow_ok && ($p1 == $p1.shadow));
  $p2 := $load.ref($M.13,$p1);
  $p2.shadow := $load.ref($M.13.shadow,$p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 116, 14} true;
  call $i3, $i3.shadow := open.ref.i32($p2, $p2.shadow, 0, 0);
  call {:cexpr "fd"} boogie_si_record_i32($i3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 117, 13} true;
  $i4 := $ne.i32($i3,$sub.i32(0,1));
  $i4.shadow := $ne.i32($i3.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 117, 13} true;
  assume {:branchcond $i4} true;
  $shadow_ok := ($shadow_ok && ($i4 == $i4.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  call $i5, $i5.shadow := fstat($i3, $i3.shadow, $p0, $p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  $i6 := $eq.i32($i5,0);
  $i6.shadow := $eq.i32($i5.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  assume {:branchcond $i6} true;
  $shadow_ok := ($shadow_ok && ($i6 == $i6.shadow));
  goto $bb4, $bb5;
$bb3:
  assume !($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  call $p16, $p16.shadow := __errno_location();
  assume $isExternal($p16);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  $shadow_ok := ($shadow_ok && ($p16 == $p16.shadow));
  $i17 := $load.i32($M.15,$p16);
  $i17.shadow := $load.i32($M.15.shadow,$p16.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  $i18 := $eq.i32($i17,4);
  $i18.shadow := $eq.i32($i17.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  $p19 := $p1;
  $p19.shadow := $p1.shadow;
  assume {:branchcond $i18} true;
  $shadow_ok := ($shadow_ok && ($i18 == $i18.shadow));
  goto $bb11, $bb13;
$bb4:
  assume ($i6 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  $p7 := $add.ref($p0,24);
  $p7.shadow := $add.ref($p0.shadow,24);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  $shadow_ok := ($shadow_ok && ($p7 == $p7.shadow));
  $i8 := $load.i32($M.14,$p7);
  $i8.shadow := $load.i32($M.14.shadow,$p7.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  $i9 := $and.i32($i8,61440);
  $i9.shadow := $and.i32($i8.shadow,61440);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  $i10 := $eq.i32($i9,8192);
  $i10.shadow := $eq.i32($i9.shadow,8192);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  assume {:branchcond $i10} true;
  $shadow_ok := ($shadow_ok && ($i10 == $i10.shadow));
  goto $bb7, $bb8;
$bb5:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  assume !($i6 == 1);
  goto $bb6;
$bb6:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 124, 20} true;
  call $i15, $i15.shadow := close($i3, $i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 9} true;
  goto $bb10;
$bb7:
  assume ($i10 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 120, 43} true;
  call $i11, $i11.shadow := fcntl.i32.i32($i3, $i3.shadow, 1, 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 120, 43} true;
  $i12 := $or.i32($i11,1);
  $i12.shadow := $or.i32($i11.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 120, 24} true;
  call $i13, $i13.shadow := fcntl.i32.i32.i32($i3, $i3.shadow, 2, 2, $i12, $i12.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 122, 17} true;
  $i14 := $i3;
  $i14.shadow := $i3.shadow;
  goto $bb9;
$bb8:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 118, 17} true;
  assume !($i10 == 1);
  goto $bb6;
$bb9:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 134, 1} true;
  $r := $i14;
  $r.shadow := $i14.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb10:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 128, 9} true;
  $p20 := $add.ref($p1,8);
  $p20.shadow := $add.ref($p1.shadow,8);
  call {:cexpr "device"} boogie_si_record_ref($p20);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 129, 5} true;
  $p19 := $p20;
  $p19.shadow := $p20.shadow;
  goto $bb12;
$bb11:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  assume ($i18 == 1);
  goto $bb12;
$bb12:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 129, 5} true;
  $shadow_ok := ($shadow_ok && ($p19 == $p19.shadow));
  $p21 := $load.ref($M.13,$p19);
  $p21.shadow := $load.ref($M.13.shadow,$p19.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 129, 5} true;
  $i22 := $ne.ref($p21,$0.ref);
  $i22.shadow := $ne.ref($p21.shadow,$0.ref);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 129, 5} true;
  $p1 := $p19;
  $p1.shadow := $p19.shadow;
  assume {:branchcond $i22} true;
  $shadow_ok := ($shadow_ok && ($i22 == $i22.shadow));
  goto $bb14, $bb15;
$bb13:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 125, 20} true;
  assume !($i18 == 1);
  goto $bb10;
$bb14:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 129, 5} true;
  assume ($i22 == 1);
  goto $bb1;
$bb15:
  assume !($i22 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 131, 5} true;
  call $p23, $p23.shadow := __errno_location();
  assume $isExternal($p23);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 131, 5} true;
  $shadow_ok := ($shadow_ok && ($p23 == $p23.shadow));
  $M.16 := $store.i32($M.16,$p23,5);
  $M.16.shadow := $store.i32($M.16.shadow,$p23.shadow,5);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 132, 5} true;
  $i14 := $sub.i32(0,1);
  $i14.shadow := $sub.i32(0,1);
  goto $bb9;
}
procedure {:inline 1} randombytes_sysrandom_stir()
modifies $M.6, $exn;
modifies $M.7, $M.10;
modifies $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 208, 9} true;
  $i0 := $M.6;
  $i0.shadow := $M.6.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 208, 9} true;
  $i1 := $eq.i32($i0,0);
  $i1.shadow := $eq.i32($i0.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 208, 9} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 209, 9} true;
  call randombytes_sysrandom_init();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 210, 9} true;
  $M.6 := 1;
  $M.6.shadow := 1;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 211, 5} true;
  goto $bb3;
$bb2:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 208, 9} true;
  assume !($i1 == 1);
  goto $bb3;
$bb3:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 212, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} randombytes_sysrandom_stir_if_needed()
modifies $exn;
modifies $M.6, $M.7, $M.10;
modifies $M.16;
modifies $CurrAddr, $Alloc;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
$bb0:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 217, 9} true;
  $i0 := $M.6;
  $i0.shadow := $M.6.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 217, 9} true;
  $i1 := $eq.i32($i0,0);
  $i1.shadow := $eq.i32($i0.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 217, 9} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 218, 9} true;
  call randombytes_sysrandom_stir();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 219, 5} true;
  goto $bb3;
$bb2:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 217, 9} true;
  assume !($i1 == 1);
  goto $bb3;
$bb3:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 220, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} read($i0: i32, $i0.shadow: i32, $p1: ref, $p1.shadow: ref, $i2: i64, $i2.shadow: i64) returns ($r: i64, $r.shadow: i64);
procedure {:inline 1} rotate(u: i32, u.shadow: i32, c: i32, c.shadow: i32) returns ($r: i32, $r.shadow: i32)
modifies $exn;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
$bb0:
  call {:cexpr "u"} boogie_si_record_i32(u);
  call {:cexpr "c"} boogie_si_record_i32(c);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 15, 3} true;
  $i0 := $shl.i32(u,c);
  $i0.shadow := $shl.i32(u.shadow,c.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 15, 3} true;
  $i1 := $sub.i32(32,c);
  $i1.shadow := $sub.i32(32,c.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 15, 3} true;
  $i2 := $lshr.i32(u,$i1);
  $i2.shadow := $lshr.i32(u.shadow,$i1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 15, 3} true;
  $i3 := $or.i32($i0,$i2);
  $i3.shadow := $or.i32($i0.shadow,$i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 15, 3} true;
  $r := $i3;
  $r.shadow := $i3.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} safe_read(fd: i32, fd.shadow: i32, buf_: ref, buf_.shadow: ref, size: i64, size.shadow: i64) returns ($r: i64, $r.shadow: i64)
modifies $exn;
{
  var $i0: i1;
  var $i0.shadow: i1;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i10: i1;
  var $i10.shadow: i1;
  var $i11: i1;
  var $i11.shadow: i1;
  var $i12: i64;
  var $i12.shadow: i64;
  var $i13: i1;
  var $i13.shadow: i1;
  var $i15: i64;
  var $i15.shadow: i64;
  var $i17: i1;
  var $i17.shadow: i1;
  var $i18: i64;
  var $i18.shadow: i64;
  var $i19: i64;
  var $i19.shadow: i64;
  var $i20: i64;
  var $i20.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i1;
  var $i4.shadow: i1;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i7: i1;
  var $i7.shadow: i1;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p16: ref;
  var $p16.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
$bb0:
  call {:cexpr "fd"} boogie_si_record_i32(fd);
  call {:cexpr "buf_"} boogie_si_record_ref(buf_);
  call {:cexpr "size"} boogie_si_record_i64(size);
  call {:cexpr "buf"} boogie_si_record_ref(buf_);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 82, 5} true;
  $i0 := $ugt.i64(size,0);
  $i0.shadow := $ugt.i64(size.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 82, 5} true;
  $i1 := size;
  $i1.shadow := size.shadow;
  $p2 := buf_;
  $p2.shadow := buf_.shadow;
  assume {:branchcond $i0} true;
  $shadow_ok := ($shadow_ok && ($i0 == $i0.shadow));
  goto $bb1, $bb3;
$bb1:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 82, 5} true;
  assume ($i0 == 1);
  goto $bb2;
$bb2:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($i1 == $i1.shadow);
  assert {:shadow_invariant} ($p2 == $p2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 84, 26} true;
  call $i3, $i3.shadow := read(fd, fd.shadow, $p2, $p2.shadow, $i1, $i1.shadow);
  call {:cexpr "readnb"} boogie_si_record_i64($i3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 84, 26} true;
  $i4 := $slt.i64($i3,0);
  $i4.shadow := $slt.i64($i3.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 84, 26} true;
  assume {:branchcond $i4} true;
  $shadow_ok := ($shadow_ok && ($i4 == $i4.shadow));
  goto $bb4, $bb5;
$bb3:
  assume !($i0 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 82, 5} true;
  call __assert_fail(.str1991, .str1991, .str2992, .str2992, 82, 82, __PRETTY_FUNCTION__.safe_read, __PRETTY_FUNCTION__.safe_read);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 82, 5} true;
  assume false;
$bb4:
  assume ($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 17} true;
  call $p5, $p5.shadow := __errno_location();
  assume $isExternal($p5);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 17} true;
  $shadow_ok := ($shadow_ok && ($p5 == $p5.shadow));
  $i6 := $load.i32($M.11,$p5);
  $i6.shadow := $load.i32($M.11.shadow,$p5.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 17} true;
  $i7 := $eq.i32($i6,4);
  $i7.shadow := $eq.i32($i6.shadow,4);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 17} true;
  $i1 := $i1;
  $i1.shadow := $i1.shadow;
  $p2 := $p2;
  $p2.shadow := $p2.shadow;
  assume {:branchcond $i7} true;
  $shadow_ok := ($shadow_ok && ($i7 == $i7.shadow));
  goto $bb7, $bb8;
$bb5:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 84, 26} true;
  assume !($i4 == 1);
  goto $bb6;
$bb6:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 86, 13} true;
  $i11 := $slt.i64($i3,0);
  $i11.shadow := $slt.i64($i3.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 86, 13} true;
  assume {:branchcond $i11} true;
  $shadow_ok := ($shadow_ok && ($i11 == $i11.shadow));
  goto $bb11, $bb12;
$bb7:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 17} true;
  assume ($i7 == 1);
  goto $bb2;
$bb8:
  assume !($i7 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  call $p8, $p8.shadow := __errno_location();
  assume $isExternal($p8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  $shadow_ok := ($shadow_ok && ($p8 == $p8.shadow));
  $i9 := $load.i32($M.12,$p8);
  $i9.shadow := $load.i32($M.12.shadow,$p8.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  $i10 := $eq.i32($i9,11);
  $i10.shadow := $eq.i32($i9.shadow,11);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  $i1 := $i1;
  $i1.shadow := $i1.shadow;
  $p2 := $p2;
  $p2.shadow := $p2.shadow;
  assume {:branchcond $i10} true;
  $shadow_ok := ($shadow_ok && ($i10 == $i10.shadow));
  goto $bb9, $bb10;
$bb9:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  assume ($i10 == 1);
  goto $bb2;
$bb10:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 85, 35} true;
  assume !($i10 == 1);
  goto $bb6;
$bb11:
  assume ($i11 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 87, 13} true;
  $i12 := $i3;
  $i12.shadow := $i3.shadow;
  goto $bb13;
$bb12:
  assume !($i11 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 89, 13} true;
  $i13 := $eq.i64($i3,0);
  $i13.shadow := $eq.i64($i3.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 89, 13} true;
  $p14 := $p2;
  $p14.shadow := $p2.shadow;
  assume {:branchcond $i13} true;
  $shadow_ok := ($shadow_ok && ($i13 == $i13.shadow));
  goto $bb14, $bb16;
$bb13:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 97, 1} true;
  $r := $i12;
  $r.shadow := $i12.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb14:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 89, 13} true;
  assume ($i13 == 1);
  goto $bb15;
$bb15:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 96, 5} true;
  $i18 := $p2i.ref.i64($p14);
  $i18.shadow := $p2i.ref.i64($p14.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 96, 5} true;
  $i19 := $p2i.ref.i64(buf_);
  $i19.shadow := $p2i.ref.i64(buf_.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 96, 5} true;
  $i20 := $sub.i64($i18,$i19);
  $i20.shadow := $sub.i64($i18.shadow,$i19.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 96, 5} true;
  $i12 := $i20;
  $i12.shadow := $i20.shadow;
  goto $bb13;
$bb16:
  assume !($i13 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 92, 9} true;
  $i15 := $sub.i64($i1,$i3);
  $i15.shadow := $sub.i64($i1.shadow,$i3.shadow);
  call {:cexpr "size"} boogie_si_record_i64($i15);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 93, 9} true;
  $p16 := $add.ref($p2,$mul.ref($i3,1));
  $p16.shadow := $add.ref($p2.shadow,$mul.ref($i3.shadow,1));
  call {:cexpr "buf"} boogie_si_record_ref($p16);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 94, 5} true;
  $i17 := $ugt.i64($i15,0);
  $i17.shadow := $ugt.i64($i15.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 94, 5} true;
  $i1 := $i15;
  $i1.shadow := $i15.shadow;
  $p2 := $p16;
  $p2.shadow := $p16.shadow;
  $p14 := $p16;
  $p14.shadow := $p16.shadow;
  assume {:branchcond $i17} true;
  $shadow_ok := ($shadow_ok && ($i17 == $i17.shadow));
  goto $bb17, $bb18;
$bb17:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 94, 5} true;
  assume ($i17 == 1);
  goto $bb2;
$bb18:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", 94, 5} true;
  assume !($i17 == 1);
  goto $bb15;
}
procedure {:inline 1} sodium_malloc(size: i64, size.shadow: i64) returns ($r: ref, $r.shadow: ref)
modifies $M.1, $exn;
modifies $CurrAddr, $Alloc;
{
  var $i1: i1;
  var $i1.shadow: i1;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
$bb0:
  call {:cexpr "size"} boogie_si_record_i64(size);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 406, 16} true;
  call $p0, $p0.shadow := _sodium_malloc(size, size.shadow);
  call {:cexpr "ptr"} boogie_si_record_ref($p0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 406, 16} true;
  $i1 := $eq.ref($p0,$0.ref);
  $i1.shadow := $eq.ref($p0.shadow,$0.ref);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 406, 16} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 407, 9} true;
  $p2 := $0.ref;
  $p2.shadow := $0.ref;
  goto $bb3;
$bb2:
  assume !($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 409, 5} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $shadow_ok := ($shadow_ok && (size == size.shadow));
  call $M.1, $M.1.shadow := $memset.i8($M.1, $M.1.shadow, $p0, $p0.shadow, $sub.i8(0,48), $sub.i8(0,48), size, size.shadow, $zext.i32.i64(1), $zext.i32.i64(1), (0 == 1), (0 == 1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 411, 5} true;
  $p2 := $p0;
  $p2.shadow := $p0.shadow;
  goto $bb3;
$bb3:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 412, 1} true;
  $r := $p2;
  $r.shadow := $p2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} sodium_memzero(pnt: ref, pnt.shadow: ref, len: i64, len.shadow: i64)
modifies $M.0, $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i1;
  var $i1.shadow: i1;
  var $i2: i64;
  var $i2.shadow: i64;
  var $p3: ref;
  var $p3.shadow: ref;
$bb0:
  call {:cexpr "pnt"} boogie_si_record_ref(pnt);
  call {:cexpr "len"} boogie_si_record_i64(len);
  call {:cexpr "pnt_"} boogie_si_record_ref(pnt);
  call {:cexpr "i"} boogie_si_record_i64(0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 75, 5} true;
  $i0 := 0;
  $i0.shadow := 0;
  goto $bb1;
$bb1:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($i0 == $i0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 75, 5} true;
  $i1 := $ult.i64($i0,len);
  $i1.shadow := $ult.i64($i0.shadow,len.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 75, 5} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 76, 9} true;
  $i2 := $add.i64($i0,1);
  $i2.shadow := $add.i64($i0.shadow,1);
  call {:cexpr "i"} boogie_si_record_i64($i2);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 76, 9} true;
  $p3 := $add.ref(pnt,$mul.ref($i0,1));
  $p3.shadow := $add.ref(pnt.shadow,$mul.ref($i0.shadow,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 76, 9} true;
  $shadow_ok := ($shadow_ok && ($p3 == $p3.shadow));
  $M.0 := $store.i8($M.0,$p3,0);
  $M.0.shadow := $store.i8($M.0.shadow,$p3.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 77, 5} true;
  $i0 := $i2;
  $i0.shadow := $i2.shadow;
  goto $bb1;
$bb3:
  assume !($i1 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/sodium/utils.c", 79, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} store_littleendian(x: ref, x.shadow: ref, u: i32, u.shadow: i32)
modifies $M.20, $exn;
{
  var $i0: i8;
  var $i0.shadow: i8;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i8;
  var $i3.shadow: i8;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i8;
  var $i6.shadow: i8;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i9: i8;
  var $i9.shadow: i8;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p10: ref;
  var $p10.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  call {:cexpr "x"} boogie_si_record_ref(x);
  call {:cexpr "u"} boogie_si_record_i32(u);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 30, 3} true;
  $i0 := $trunc.i32.i8(u);
  $i0.shadow := $trunc.i32.i8(u.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 30, 3} true;
  $p1 := x;
  $p1.shadow := x.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 30, 3} true;
  $shadow_ok := ($shadow_ok && ($p1 == $p1.shadow));
  $M.20 := $store.i8($M.20,$p1,$i0);
  $M.20.shadow := $store.i8($M.20.shadow,$p1.shadow,$i0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 30, 13} true;
  $i2 := $lshr.i32(u,8);
  $i2.shadow := $lshr.i32(u.shadow,8);
  call {:cexpr "u"} boogie_si_record_i32($i2);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 31, 3} true;
  $i3 := $trunc.i32.i8($i2);
  $i3.shadow := $trunc.i32.i8($i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 31, 3} true;
  $p4 := $add.ref(x,1);
  $p4.shadow := $add.ref(x.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 31, 3} true;
  $shadow_ok := ($shadow_ok && ($p4 == $p4.shadow));
  $M.20 := $store.i8($M.20,$p4,$i3);
  $M.20.shadow := $store.i8($M.20.shadow,$p4.shadow,$i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 31, 13} true;
  $i5 := $lshr.i32($i2,8);
  $i5.shadow := $lshr.i32($i2.shadow,8);
  call {:cexpr "u"} boogie_si_record_i32($i5);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 32, 3} true;
  $i6 := $trunc.i32.i8($i5);
  $i6.shadow := $trunc.i32.i8($i5.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 32, 3} true;
  $p7 := $add.ref(x,2);
  $p7.shadow := $add.ref(x.shadow,2);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 32, 3} true;
  $shadow_ok := ($shadow_ok && ($p7 == $p7.shadow));
  $M.20 := $store.i8($M.20,$p7,$i6);
  $M.20.shadow := $store.i8($M.20.shadow,$p7.shadow,$i6.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 32, 13} true;
  $i8 := $lshr.i32($i5,8);
  $i8.shadow := $lshr.i32($i5.shadow,8);
  call {:cexpr "u"} boogie_si_record_i32($i8);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 33, 3} true;
  $i9 := $trunc.i32.i8($i8);
  $i9.shadow := $trunc.i32.i8($i8.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 33, 3} true;
  $p10 := $add.ref(x,3);
  $p10.shadow := $add.ref(x.shadow,3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 33, 3} true;
  $shadow_ok := ($shadow_ok && ($p10 == $p10.shadow));
  $M.20 := $store.i8($M.20,$p10,$i9);
  $M.20.shadow := $store.i8($M.20.shadow,$p10.shadow,$i9.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/sodium/libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", 34, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} strchr($p0: ref, $p0.shadow: ref, $i1: i32, $i1.shadow: i32) returns ($r: ref, $r.shadow: ref);
axiom (.str1 == $sub.ref(0,16));
axiom (.str2 == $sub.ref(0,30));
axiom (.str3 == $sub.ref(0,44));
axiom (canary == $sub.ref(0,60));
axiom (stream == $sub.ref(0,72));
axiom (.str990 == $sub.ref(0,82));
axiom (randombytes_sysrandom_implementation == $sub.ref(0,130));
axiom (.str1991 == $sub.ref(0,149));
axiom (.str2992 == $sub.ref(0,273));
axiom (__PRETTY_FUNCTION__.safe_read == $sub.ref(0,323));
axiom (randombytes_sysrandom_random_dev_open.devices == $sub.ref(0,347));
axiom (.str3993 == $sub.ref(0,360));
axiom (.str4994 == $sub.ref(0,372));
axiom (implementation_ == $sub.ref(0,380));
axiom (.str995 == $sub.ref(0,416));
axiom (.str1996 == $sub.ref(0,520));
axiom (__PRETTY_FUNCTION__.randombytes == $sub.ref(0,585));
axiom (__VERIFIER_assume == $sub.ref(0,593));
axiom (llvm.dbg.declare == $sub.ref(0,601));
axiom (__SMACK_dummy == $sub.ref(0,609));
axiom (__SMACK_code == $sub.ref(0,617));
axiom (__VERIFIER_nondet_unsigned_char == $sub.ref(0,625));
axiom (__VERIFIER_nondet_unsigned_short == $sub.ref(0,633));
axiom (__VERIFIER_nondet_unsigned_int == $sub.ref(0,641));
axiom (__VERIFIER_nondet_unsigned_long == $sub.ref(0,649));
axiom (__VERIFIER_nondet == $sub.ref(0,657));
axiom (__SMACK_decls == $sub.ref(0,665));
axiom (__SMACK_top_decl == $sub.ref(0,673));
axiom (__SMACK_init_func_memory_model == $sub.ref(0,681));
axiom (sodium_memzero == $sub.ref(0,689));
axiom (abort == $sub.ref(0,697));
axiom (strchr == $sub.ref(0,705));
axiom (__errno_location == $sub.ref(0,713));
axiom (sodium_malloc == $sub.ref(0,721));
axiom (llvm.memset.p0i8.i64 == $sub.ref(0,729));
axiom (free_ == $sub.ref(0,737));
axiom (malloc == $sub.ref(0,745));
axiom (_sodium_malloc == $sub.ref(0,753));
axiom (_mprotect_noaccess == $sub.ref(0,761));
axiom (_sodium_mprotect == $sub.ref(0,769));
axiom (_mprotect_readonly == $sub.ref(0,777));
axiom (_mprotect_readwrite == $sub.ref(0,785));
axiom (randombytes_sysrandom_stir == $sub.ref(0,793));
axiom (randombytes_sysrandom_close == $sub.ref(0,801));
axiom (close == $sub.ref(0,809));
axiom (randombytes_sysrandom == $sub.ref(0,817));
axiom (randombytes_sysrandom_buf == $sub.ref(0,825));
axiom (randombytes_sysrandom_implementation_name == $sub.ref(0,833));
axiom (__assert_fail == $sub.ref(0,841));
axiom (read == $sub.ref(0,849));
axiom (open == $sub.ref(0,857));
axiom (fstat == $sub.ref(0,865));
axiom (fcntl == $sub.ref(0,873));
axiom (randombytes_sysrandom_init == $sub.ref(0,881));
axiom (randombytes_sysrandom_stir_if_needed == $sub.ref(0,889));
axiom (safe_read == $sub.ref(0,897));
axiom (randombytes_sysrandom_random_dev_open == $sub.ref(0,905));
axiom (randombytes_random == $sub.ref(0,913));
axiom (randombytes_buf == $sub.ref(0,921));
axiom (crypto_core_salsa20 == $sub.ref(0,929));
axiom (load_littleendian == $sub.ref(0,937));
axiom (rotate == $sub.ref(0,945));
axiom (store_littleendian == $sub.ref(0,953));
axiom (crypto_core_salsa20_wrapper == $sub.ref(0,961));
axiom (public_in == $sub.ref(0,969));
axiom (__SMACK_value == $sub.ref(0,977));
axiom (llvm.dbg.value == $sub.ref(0,985));
axiom (__SMACK_static_init == $sub.ref(0,993));
procedure {:inline 1} $memset.i8(M: [ref] i8, M.shadow: [ref] i8, dst: ref, dst.shadow: ref, val: i8, val.shadow: i8, len: ref, len.shadow: ref, align: ref, align.shadow: ref, isvolatile: bool, isvolatile.shadow: bool) returns (M.ret: [ref] i8, M.ret.shadow: [ref] i8)
{
  assume (forall x: ref :: (($sle.ref.bool(dst,x) && $slt.ref.bool(x,$add.ref(dst,len))) ==> (M.ret[x] == val)));
  assume (forall x: ref :: (($sle.ref.bool(dst.shadow,x) && $slt.ref.bool(x,$add.ref(dst.shadow,len.shadow))) ==> (M.ret.shadow[x] == val.shadow)));
  assume (forall x: ref :: ($slt.ref.bool(x,dst) ==> (M.ret[x] == M[x])));
  assume (forall x: ref :: ($slt.ref.bool(x,dst.shadow) ==> (M.ret.shadow[x] == M.shadow[x])));
  assume (forall x: ref :: ($sle.ref.bool($add.ref(dst,len),x) ==> (M.ret[x] == M[x])));
  assume (forall x: ref :: ($sle.ref.bool($add.ref(dst.shadow,len.shadow),x) ==> (M.ret.shadow[x] == M.shadow[x])));
}
axiom ($and.i1(0,0) == 0);
axiom ($and.i1(0,1) == 0);
axiom ($and.i1(1,0) == 0);
axiom ($and.i1(1,1) == 1);
axiom ($or.i1(0,0) == 0);
axiom ($or.i1(0,1) == 1);
axiom ($or.i1(1,0) == 1);
axiom ($or.i1(1,1) == 1);
axiom ($xor.i1(0,0) == 0);
axiom ($xor.i1(0,1) == 1);
axiom ($xor.i1(1,0) == 1);
axiom ($xor.i1(1,1) == 0);
axiom (forall f1, f2: float :: ((f1 != f2) || $foeq.bool(f1,f2)));
axiom (forall f: float :: ($si2fp.i128.float($fp2si.float.i128(f)) == f));
axiom (forall f: float :: ($si2fp.i16.float($fp2si.float.i16(f)) == f));
axiom (forall f: float :: ($si2fp.i24.float($fp2si.float.i24(f)) == f));
axiom (forall f: float :: ($si2fp.i32.float($fp2si.float.i32(f)) == f));
axiom (forall f: float :: ($si2fp.i48.float($fp2si.float.i48(f)) == f));
axiom (forall f: float :: ($si2fp.i64.float($fp2si.float.i64(f)) == f));
axiom (forall f: float :: ($si2fp.i8.float($fp2si.float.i8(f)) == f));
axiom (forall f: float :: ($si2fp.i96.float($fp2si.float.i96(f)) == f));
axiom (forall f: float :: ($ui2fp.i128.float($fp2ui.float.i128(f)) == f));
axiom (forall f: float :: ($ui2fp.i16.float($fp2ui.float.i16(f)) == f));
axiom (forall f: float :: ($ui2fp.i24.float($fp2ui.float.i24(f)) == f));
axiom (forall f: float :: ($ui2fp.i32.float($fp2ui.float.i32(f)) == f));
axiom (forall f: float :: ($ui2fp.i48.float($fp2ui.float.i48(f)) == f));
axiom (forall f: float :: ($ui2fp.i64.float($fp2ui.float.i64(f)) == f));
axiom (forall f: float :: ($ui2fp.i8.float($fp2ui.float.i8(f)) == f));
axiom (forall f: float :: ($ui2fp.i96.float($fp2ui.float.i96(f)) == f));
axiom (forall i: i128 :: ($fp2si.float.i128($si2fp.i128.float(i)) == i));
axiom (forall i: i128 :: ($fp2ui.float.i128($ui2fp.i128.float(i)) == i));
axiom (forall i: i16 :: ($fp2si.float.i16($si2fp.i16.float(i)) == i));
axiom (forall i: i16 :: ($fp2ui.float.i16($ui2fp.i16.float(i)) == i));
axiom (forall i: i24 :: ($fp2si.float.i24($si2fp.i24.float(i)) == i));
axiom (forall i: i24 :: ($fp2ui.float.i24($ui2fp.i24.float(i)) == i));
axiom (forall i: i32 :: ($fp2si.float.i32($si2fp.i32.float(i)) == i));
axiom (forall i: i32 :: ($fp2ui.float.i32($ui2fp.i32.float(i)) == i));
axiom (forall i: i48 :: ($fp2si.float.i48($si2fp.i48.float(i)) == i));
axiom (forall i: i48 :: ($fp2ui.float.i48($ui2fp.i48.float(i)) == i));
axiom (forall i: i64 :: ($fp2si.float.i64($si2fp.i64.float(i)) == i));
axiom (forall i: i64 :: ($fp2ui.float.i64($ui2fp.i64.float(i)) == i));
axiom (forall i: i8 :: ($fp2si.float.i8($si2fp.i8.float(i)) == i));
axiom (forall i: i8 :: ($fp2ui.float.i8($ui2fp.i8.float(i)) == i));
axiom (forall i: i96 :: ($fp2si.float.i96($si2fp.i96.float(i)) == i));
axiom (forall i: i96 :: ($fp2ui.float.i96($ui2fp.i96.float(i)) == i));
const $EXTERNS_BOTTOM: ref;
const $GLOBALS_BOTTOM: ref;
const $MALLOC_TOP: ref;
const $MOP: $mop;
function $and.i1(i1: i1, i2: i1) returns (i1);
function $and.i128(i1: i128, i2: i128) returns (i128);
function $and.i16(i1: i16, i2: i16) returns (i16);
function $and.i24(i1: i24, i2: i24) returns (i24);
function $and.i32(i1: i32, i2: i32) returns (i32);
function $and.i48(i1: i48, i2: i48) returns (i48);
function $and.i64(i1: i64, i2: i64) returns (i64);
function $and.i8(i1: i8, i2: i8) returns (i8);
function $and.i96(i1: i96, i2: i96) returns (i96);
function $ashr.i1(i1: i1, i2: i1) returns (i1);
function $ashr.i128(i1: i128, i2: i128) returns (i128);
function $ashr.i16(i1: i16, i2: i16) returns (i16);
function $ashr.i24(i1: i24, i2: i24) returns (i24);
function $ashr.i32(i1: i32, i2: i32) returns (i32);
function $ashr.i48(i1: i48, i2: i48) returns (i48);
function $ashr.i64(i1: i64, i2: i64) returns (i64);
function $ashr.i8(i1: i8, i2: i8) returns (i8);
function $ashr.i96(i1: i96, i2: i96) returns (i96);
function $base(ref) returns (ref);
function $extractvalue(p: int, i: int) returns (int);
function $fadd.float(f1: float, f2: float) returns (float);
function $fdiv.float(f1: float, f2: float) returns (float);
function $ffalse.float(f1: float, f2: float) returns (i1);
function $fmul.float(f1: float, f2: float) returns (float);
function $foeq.bool(f1: float, f2: float) returns (bool);
function $foge.float(f1: float, f2: float) returns (i1);
function $fogt.float(f1: float, f2: float) returns (i1);
function $fole.float(f1: float, f2: float) returns (i1);
function $folt.float(f1: float, f2: float) returns (i1);
function $fone.float(f1: float, f2: float) returns (i1);
function $ford.float(f1: float, f2: float) returns (i1);
function $fp(ipart: int, fpart: int, epart: int) returns (float);
function $fp2si.float.bv128(f: float) returns (bv128);
function $fp2si.float.bv16(f: float) returns (bv16);
function $fp2si.float.bv24(f: float) returns (bv24);
function $fp2si.float.bv32(f: float) returns (bv32);
function $fp2si.float.bv48(f: float) returns (bv48);
function $fp2si.float.bv64(f: float) returns (bv64);
function $fp2si.float.bv8(f: float) returns (bv8);
function $fp2si.float.bv96(f: float) returns (bv96);
function $fp2si.float.i128(f: float) returns (i128);
function $fp2si.float.i16(f: float) returns (i16);
function $fp2si.float.i24(f: float) returns (i24);
function $fp2si.float.i32(f: float) returns (i32);
function $fp2si.float.i48(f: float) returns (i48);
function $fp2si.float.i64(f: float) returns (i64);
function $fp2si.float.i8(f: float) returns (i8);
function $fp2si.float.i96(f: float) returns (i96);
function $fp2ui.float.bv128(f: float) returns (bv128);
function $fp2ui.float.bv16(f: float) returns (bv16);
function $fp2ui.float.bv24(f: float) returns (bv24);
function $fp2ui.float.bv32(f: float) returns (bv32);
function $fp2ui.float.bv48(f: float) returns (bv48);
function $fp2ui.float.bv64(f: float) returns (bv64);
function $fp2ui.float.bv8(f: float) returns (bv8);
function $fp2ui.float.bv96(f: float) returns (bv96);
function $fp2ui.float.i128(f: float) returns (i128);
function $fp2ui.float.i16(f: float) returns (i16);
function $fp2ui.float.i24(f: float) returns (i24);
function $fp2ui.float.i32(f: float) returns (i32);
function $fp2ui.float.i48(f: float) returns (i48);
function $fp2ui.float.i64(f: float) returns (i64);
function $fp2ui.float.i8(f: float) returns (i8);
function $fp2ui.float.i96(f: float) returns (i96);
function $fpext.float.float(f: float) returns (float);
function $fptrunc.float.float(f: float) returns (float);
function $frem.float(f1: float, f2: float) returns (float);
function $fsub.float(f1: float, f2: float) returns (float);
function $ftrue.float(f1: float, f2: float) returns (i1);
function $fueq.float(f1: float, f2: float) returns (i1);
function $fuge.float(f1: float, f2: float) returns (i1);
function $fugt.float(f1: float, f2: float) returns (i1);
function $fule.float(f1: float, f2: float) returns (i1);
function $fult.float(f1: float, f2: float) returns (i1);
function $fune.float(f1: float, f2: float) returns (i1);
function $funo.float(f1: float, f2: float) returns (i1);
function $lshr.i1(i1: i1, i2: i1) returns (i1);
function $lshr.i128(i1: i128, i2: i128) returns (i128);
function $lshr.i16(i1: i16, i2: i16) returns (i16);
function $lshr.i24(i1: i24, i2: i24) returns (i24);
function $lshr.i32(i1: i32, i2: i32) returns (i32);
function $lshr.i48(i1: i48, i2: i48) returns (i48);
function $lshr.i64(i1: i64, i2: i64) returns (i64);
function $lshr.i8(i1: i8, i2: i8) returns (i8);
function $lshr.i96(i1: i96, i2: i96) returns (i96);
function $nand.i1(i1: i1, i2: i1) returns (i1);
function $nand.i128(i1: i128, i2: i128) returns (i128);
function $nand.i16(i1: i16, i2: i16) returns (i16);
function $nand.i24(i1: i24, i2: i24) returns (i24);
function $nand.i32(i1: i32, i2: i32) returns (i32);
function $nand.i48(i1: i48, i2: i48) returns (i48);
function $nand.i64(i1: i64, i2: i64) returns (i64);
function $nand.i8(i1: i8, i2: i8) returns (i8);
function $nand.i96(i1: i96, i2: i96) returns (i96);
function $not.i1(i: i1) returns (i1);
function $not.i128(i: i128) returns (i128);
function $not.i16(i: i16) returns (i16);
function $not.i24(i: i24) returns (i24);
function $not.i32(i: i32) returns (i32);
function $not.i48(i: i48) returns (i48);
function $not.i64(i: i64) returns (i64);
function $not.i8(i: i8) returns (i8);
function $not.i96(i: i96) returns (i96);
function $or.i1(i1: i1, i2: i1) returns (i1);
function $or.i128(i1: i128, i2: i128) returns (i128);
function $or.i16(i1: i16, i2: i16) returns (i16);
function $or.i24(i1: i24, i2: i24) returns (i24);
function $or.i32(i1: i32, i2: i32) returns (i32);
function $or.i48(i1: i48, i2: i48) returns (i48);
function $or.i64(i1: i64, i2: i64) returns (i64);
function $or.i8(i1: i8, i2: i8) returns (i8);
function $or.i96(i1: i96, i2: i96) returns (i96);
function $shl.i1(i1: i1, i2: i1) returns (i1);
function $shl.i128(i1: i128, i2: i128) returns (i128);
function $shl.i16(i1: i16, i2: i16) returns (i16);
function $shl.i24(i1: i24, i2: i24) returns (i24);
function $shl.i32(i1: i32, i2: i32) returns (i32);
function $shl.i48(i1: i48, i2: i48) returns (i48);
function $shl.i64(i1: i64, i2: i64) returns (i64);
function $shl.i8(i1: i8, i2: i8) returns (i8);
function $shl.i96(i1: i96, i2: i96) returns (i96);
function $si2fp.bv128.float(i: bv128) returns (float);
function $si2fp.bv16.float(i: bv16) returns (float);
function $si2fp.bv24.float(i: bv24) returns (float);
function $si2fp.bv32.float(i: bv32) returns (float);
function $si2fp.bv48.float(i: bv48) returns (float);
function $si2fp.bv64.float(i: bv64) returns (float);
function $si2fp.bv8.float(i: bv8) returns (float);
function $si2fp.bv96.float(i: bv96) returns (float);
function $si2fp.i128.float(i: i128) returns (float);
function $si2fp.i16.float(i: i16) returns (float);
function $si2fp.i24.float(i: i24) returns (float);
function $si2fp.i32.float(i: i32) returns (float);
function $si2fp.i48.float(i: i48) returns (float);
function $si2fp.i64.float(i: i64) returns (float);
function $si2fp.i8.float(i: i8) returns (float);
function $si2fp.i96.float(i: i96) returns (float);
function $ui2fp.bv128.float(i: bv128) returns (float);
function $ui2fp.bv16.float(i: bv16) returns (float);
function $ui2fp.bv24.float(i: bv24) returns (float);
function $ui2fp.bv32.float(i: bv32) returns (float);
function $ui2fp.bv48.float(i: bv48) returns (float);
function $ui2fp.bv64.float(i: bv64) returns (float);
function $ui2fp.bv8.float(i: bv8) returns (float);
function $ui2fp.bv96.float(i: bv96) returns (float);
function $ui2fp.i128.float(i: i128) returns (float);
function $ui2fp.i16.float(i: i16) returns (float);
function $ui2fp.i24.float(i: i24) returns (float);
function $ui2fp.i32.float(i: i32) returns (float);
function $ui2fp.i48.float(i: i48) returns (float);
function $ui2fp.i64.float(i: i64) returns (float);
function $ui2fp.i8.float(i: i8) returns (float);
function $ui2fp.i96.float(i: i96) returns (float);
function $xor.i1(i1: i1, i2: i1) returns (i1);
function $xor.i128(i1: i128, i2: i128) returns (i128);
function $xor.i16(i1: i16, i2: i16) returns (i16);
function $xor.i24(i1: i24, i2: i24) returns (i24);
function $xor.i32(i1: i32, i2: i32) returns (i32);
function $xor.i48(i1: i48, i2: i48) returns (i48);
function $xor.i64(i1: i64, i2: i64) returns (i64);
function $xor.i8(i1: i8, i2: i8) returns (i8);
function $xor.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $div(i1: int, i2: int) returns (int);
function {:builtin "div"} $sdiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "div"} $sdiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $sdiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $sdiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $sdiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $sdiv.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "div"} $sdiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $sdiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $sdiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $udiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "div"} $udiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $udiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $udiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $udiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $udiv.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "div"} $udiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $udiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $udiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "mod"} $mod(i1: int, i2: int) returns (int);
function {:builtin "mod"} $smod.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "mod"} $smod.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "mod"} $smod.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "mod"} $smod.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "mod"} $smod.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "mod"} $smod.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "mod"} $smod.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "mod"} $smod.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "mod"} $smod.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $rem(i1: int, i2: int) returns (int);
function {:builtin "rem"} $srem.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $srem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $srem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $srem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $srem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $srem.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "rem"} $srem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $srem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $srem.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $urem.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $urem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $urem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $urem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $urem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $urem.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "rem"} $urem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $urem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $urem.i96(i1: i96, i2: i96) returns (i96);
function {:bvbuiltin "(_ sign_extend 104)"} $sext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ sign_extend 112)"} $sext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ sign_extend 120)"} $sext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv32.bv48(i: bv32) returns (bv48);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv48.bv64(i: bv48) returns (bv64);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv24.bv48(i: bv24) returns (bv48);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv16.bv48(i: bv16) returns (bv48);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv96.bv128(i: bv96) returns (bv128);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv8.bv48(i: bv8) returns (bv48);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv48.bv96(i: bv48) returns (bv96);
function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv48.bv128(i: bv48) returns (bv128);
function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ sign_extend 96)"} $sext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "(_ zero_extend 104)"} $zext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ zero_extend 112)"} $zext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ zero_extend 120)"} $zext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv32.bv48(i: bv32) returns (bv48);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv48.bv64(i: bv48) returns (bv64);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv24.bv48(i: bv24) returns (bv48);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv16.bv48(i: bv16) returns (bv48);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv96.bv128(i: bv96) returns (bv128);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv8.bv48(i: bv8) returns (bv48);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv48.bv96(i: bv48) returns (bv96);
function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv48.bv128(i: bv48) returns (bv128);
function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ zero_extend 96)"} $zext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "bvadd"} $add.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvadd"} $add.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvadd"} $add.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvadd"} $add.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvadd"} $add.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvadd"} $add.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvadd"} $add.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvadd"} $add.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvadd"} $add.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvand"} $and.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvand"} $and.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvand"} $and.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvand"} $and.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvand"} $and.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvand"} $and.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvand"} $and.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvand"} $and.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvand"} $and.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvashr"} $ashr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvashr"} $ashr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvashr"} $ashr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvashr"} $ashr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvashr"} $ashr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvashr"} $ashr.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvashr"} $ashr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvashr"} $ashr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvashr"} $ashr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvlshr"} $lshr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvlshr"} $lshr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvlshr"} $lshr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvlshr"} $lshr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvlshr"} $lshr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvlshr"} $lshr.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvlshr"} $lshr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvlshr"} $lshr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvlshr"} $lshr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvmul"} $mul.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvmul"} $mul.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvmul"} $mul.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvmul"} $mul.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvmul"} $mul.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvmul"} $mul.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvmul"} $mul.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvmul"} $mul.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvmul"} $mul.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvnand"} $nand.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvnand"} $nand.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvnand"} $nand.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvnand"} $nand.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvnand"} $nand.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvnand"} $nand.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvnand"} $nand.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvnand"} $nand.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvnand"} $nand.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvnot"} $not.bv1(i: bv1) returns (bv1);
function {:bvbuiltin "bvnot"} $not.bv128(i: bv128) returns (bv128);
function {:bvbuiltin "bvnot"} $not.bv16(i: bv16) returns (bv16);
function {:bvbuiltin "bvnot"} $not.bv24(i: bv24) returns (bv24);
function {:bvbuiltin "bvnot"} $not.bv32(i: bv32) returns (bv32);
function {:bvbuiltin "bvnot"} $not.bv48(i: bv48) returns (bv48);
function {:bvbuiltin "bvnot"} $not.bv64(i: bv64) returns (bv64);
function {:bvbuiltin "bvnot"} $not.bv8(i: bv8) returns (bv8);
function {:bvbuiltin "bvnot"} $not.bv96(i: bv96) returns (bv96);
function {:bvbuiltin "bvor"} $or.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvor"} $or.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvor"} $or.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvor"} $or.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvor"} $or.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvor"} $or.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvor"} $or.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvor"} $or.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvor"} $or.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsdiv"} $sdiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsdiv"} $sdiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsdiv"} $sdiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsdiv"} $sdiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsdiv"} $sdiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsdiv"} $sdiv.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsdiv"} $sdiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsdiv"} $sdiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsdiv"} $sdiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsge"} $sge.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sge.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sge.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sge.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sge.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sge.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sge.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sge.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sge.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sge.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sge.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $sge.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $sge.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sge.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sge.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sge.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sge.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sge.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sge.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sgt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sgt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sgt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sgt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sgt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sgt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sgt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sgt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sgt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sgt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $sgt.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $sgt.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sgt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sgt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sgt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sgt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sgt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sgt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvshl"} $shl.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvshl"} $shl.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvshl"} $shl.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvshl"} $shl.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvshl"} $shl.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvshl"} $shl.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvshl"} $shl.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvshl"} $shl.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvshl"} $shl.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsle"} $sle.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sle.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sle.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sle.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sle.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sle.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sle.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sle.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sle.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sle.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sle.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $sle.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $sle.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sle.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sle.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sle.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sle.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sle.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sle.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $slt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $slt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $slt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $slt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $slt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $slt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $slt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $slt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $slt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $slt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $slt.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $slt.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $slt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $slt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $slt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $slt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $slt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $slt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsmod"} $smod.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsmod"} $smod.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsmod"} $smod.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsmod"} $smod.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsmod"} $smod.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsmod"} $smod.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsmod"} $smod.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsmod"} $smod.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsmod"} $smod.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsrem"} $srem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsrem"} $srem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsrem"} $srem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsrem"} $srem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsrem"} $srem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsrem"} $srem.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsrem"} $srem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsrem"} $srem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsrem"} $srem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsub"} $sub.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsub"} $sub.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsub"} $sub.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsub"} $sub.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsub"} $sub.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsub"} $sub.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsub"} $sub.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsub"} $sub.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsub"} $sub.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvudiv"} $udiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvudiv"} $udiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvudiv"} $udiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvudiv"} $udiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvudiv"} $udiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvudiv"} $udiv.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvudiv"} $udiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvudiv"} $udiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvudiv"} $udiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvuge"} $uge.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $uge.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $uge.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $uge.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $uge.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $uge.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $uge.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $uge.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $uge.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $uge.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $uge.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $uge.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $uge.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $uge.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $uge.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $uge.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $uge.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $uge.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $uge.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ugt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ugt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ugt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ugt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ugt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ugt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ugt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ugt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ugt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ugt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $ugt.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $ugt.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ugt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ugt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ugt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ugt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ugt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ugt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ule.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ule.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ule.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ule.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ule.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ule.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ule.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ule.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ule.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ule.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $ule.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $ule.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ule.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ule.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ule.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ule.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ule.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ule.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ult.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ult.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ult.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ult.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ult.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ult.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ult.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ult.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ult.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ult.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv48.bool(i1: bv48, i2: bv48) returns (bool);
function {:inline} $ult.bv48(i1: bv48, i2: bv48) returns (bv1) { (if $ult.bv48.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ult.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ult.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ult.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ult.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ult.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ult.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvurem"} $urem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvurem"} $urem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvurem"} $urem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvurem"} $urem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvurem"} $urem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvurem"} $urem.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvurem"} $urem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvurem"} $urem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvurem"} $urem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvxor"} $xor.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvxor"} $xor.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvxor"} $xor.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvxor"} $xor.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvxor"} $xor.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvxor"} $xor.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvxor"} $xor.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvxor"} $xor.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvxor"} $xor.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:inline} $add.i1(i1: i1, i2: i1) returns (i1) { (i1 + i2) }
function {:inline} $add.i128(i1: i128, i2: i128) returns (i128) { (i1 + i2) }
function {:inline} $add.i16(i1: i16, i2: i16) returns (i16) { (i1 + i2) }
function {:inline} $add.i24(i1: i24, i2: i24) returns (i24) { (i1 + i2) }
function {:inline} $add.i32(i1: i32, i2: i32) returns (i32) { (i1 + i2) }
function {:inline} $add.i48(i1: i48, i2: i48) returns (i48) { (i1 + i2) }
function {:inline} $add.i64(i1: i64, i2: i64) returns (i64) { (i1 + i2) }
function {:inline} $add.i8(i1: i8, i2: i8) returns (i8) { (i1 + i2) }
function {:inline} $add.i96(i1: i96, i2: i96) returns (i96) { (i1 + i2) }
function {:inline} $bitcast.ref.ref(i: ref) returns (ref) { i }
function {:inline} $eq.bv1.bool(i1: bv1, i2: bv1) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv1(i1: bv1, i2: bv1) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv128.bool(i1: bv128, i2: bv128) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv128(i1: bv128, i2: bv128) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv16.bool(i1: bv16, i2: bv16) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv16(i1: bv16, i2: bv16) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv24.bool(i1: bv24, i2: bv24) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv24(i1: bv24, i2: bv24) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv32.bool(i1: bv32, i2: bv32) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv32(i1: bv32, i2: bv32) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv48.bool(i1: bv48, i2: bv48) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv48(i1: bv48, i2: bv48) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv64.bool(i1: bv64, i2: bv64) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv64(i1: bv64, i2: bv64) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv8.bool(i1: bv8, i2: bv8) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv8(i1: bv8, i2: bv8) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv96.bool(i1: bv96, i2: bv96) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv96(i1: bv96, i2: bv96) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 == i2) }
function {:inline} $eq.i1(i1: i1, i2: i1) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 == i2) }
function {:inline} $eq.i128(i1: i128, i2: i128) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 == i2) }
function {:inline} $eq.i16(i1: i16, i2: i16) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 == i2) }
function {:inline} $eq.i24(i1: i24, i2: i24) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 == i2) }
function {:inline} $eq.i32(i1: i32, i2: i32) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 == i2) }
function {:inline} $eq.i48(i1: i48, i2: i48) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 == i2) }
function {:inline} $eq.i64(i1: i64, i2: i64) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 == i2) }
function {:inline} $eq.i8(i1: i8, i2: i8) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 == i2) }
function {:inline} $eq.i96(i1: i96, i2: i96) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $foeq.float(f1: float, f2: float) returns (i1) { (if $foeq.bool(f1,f2) then 1 else 0) }
function {:inline} $isExternal(p: ref) returns (bool) { $slt.ref.bool(p,$EXTERNS_BOTTOM) }
function {:inline} $load.bv128(M: [ref] bv128, p: ref) returns (bv128) { M[p] }
function {:inline} $load.bv16(M: [ref] bv16, p: ref) returns (bv16) { M[p] }
function {:inline} $load.bv24(M: [ref] bv24, p: ref) returns (bv24) { M[p] }
function {:inline} $load.bv32(M: [ref] bv32, p: ref) returns (bv32) { M[p] }
function {:inline} $load.bv48(M: [ref] bv48, p: ref) returns (bv48) { M[p] }
function {:inline} $load.bv64(M: [ref] bv64, p: ref) returns (bv64) { M[p] }
function {:inline} $load.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $load.bv96(M: [ref] bv96, p: ref) returns (bv96) { M[p] }
function {:inline} $load.bytes.bv128(M: [ref] bv8, p: ref) returns (bv128) { ($load.bytes.bv64(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv64(M,p)) }
function {:inline} $load.bytes.bv16(M: [ref] bv8, p: ref) returns (bv16) { (M[$add.ref(p,$1.ref)] ++ M[p]) }
function {:inline} $load.bytes.bv24(M: [ref] bv8, p: ref) returns (bv24) { ((M[$add.ref(p,$2.ref)] ++ M[$add.ref(p,$1.ref)]) ++ M[p]) }
function {:inline} $load.bytes.bv32(M: [ref] bv8, p: ref) returns (bv32) { (((M[$add.ref(p,$3.ref)] ++ M[$add.ref(p,$2.ref)]) ++ M[$add.ref(p,$1.ref)]) ++ M[p]) }
function {:inline} $load.bytes.bv48(M: [ref] bv8, p: ref) returns (bv48) { ($load.bytes.bv16(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv32(M,p)) }
function {:inline} $load.bytes.bv64(M: [ref] bv8, p: ref) returns (bv64) { ($load.bytes.bv32(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv32(M,p)) }
function {:inline} $load.bytes.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $load.bytes.bv96(M: [ref] bv8, p: ref) returns (bv96) { ($load.bytes.bv64(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv32(M,p)) }
function {:inline} $load.float(M: [ref] float, p: ref) returns (float) { M[p] }
function {:inline} $load.i128(M: [ref] i128, p: ref) returns (i128) { M[p] }
function {:inline} $load.i16(M: [ref] i16, p: ref) returns (i16) { M[p] }
function {:inline} $load.i24(M: [ref] i24, p: ref) returns (i24) { M[p] }
function {:inline} $load.i32(M: [ref] i32, p: ref) returns (i32) { M[p] }
function {:inline} $load.i48(M: [ref] i48, p: ref) returns (i48) { M[p] }
function {:inline} $load.i64(M: [ref] i64, p: ref) returns (i64) { M[p] }
function {:inline} $load.i8(M: [ref] i8, p: ref) returns (i8) { M[p] }
function {:inline} $load.i96(M: [ref] i96, p: ref) returns (i96) { M[p] }
function {:inline} $load.ref(M: [ref] ref, p: ref) returns (ref) { M[p] }
function {:inline} $max(i1: int, i2: int) returns (int) { (if (i1 > i2) then i1 else i2) }
function {:inline} $max.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sgt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $sgt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $sgt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $sgt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $sgt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv48(i1: bv48, i2: bv48) returns (bv48) { (if $sgt.bv48.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $sgt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $sgt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $sgt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $min(i1: int, i2: int) returns (int) { (if (i1 < i2) then i1 else i2) }
function {:inline} $min.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $slt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $slt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $slt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $slt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $slt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv48(i1: bv48, i2: bv48) returns (bv48) { (if $slt.bv48.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $slt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $slt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $slt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $mul.i1(i1: i1, i2: i1) returns (i1) { (i1 * i2) }
function {:inline} $mul.i128(i1: i128, i2: i128) returns (i128) { (i1 * i2) }
function {:inline} $mul.i16(i1: i16, i2: i16) returns (i16) { (i1 * i2) }
function {:inline} $mul.i24(i1: i24, i2: i24) returns (i24) { (i1 * i2) }
function {:inline} $mul.i32(i1: i32, i2: i32) returns (i32) { (i1 * i2) }
function {:inline} $mul.i48(i1: i48, i2: i48) returns (i48) { (i1 * i2) }
function {:inline} $mul.i64(i1: i64, i2: i64) returns (i64) { (i1 * i2) }
function {:inline} $mul.i8(i1: i8, i2: i8) returns (i8) { (i1 * i2) }
function {:inline} $mul.i96(i1: i96, i2: i96) returns (i96) { (i1 * i2) }
function {:inline} $ne.bv1.bool(i1: bv1, i2: bv1) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv1(i1: bv1, i2: bv1) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv128.bool(i1: bv128, i2: bv128) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv128(i1: bv128, i2: bv128) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv16.bool(i1: bv16, i2: bv16) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv16(i1: bv16, i2: bv16) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv24.bool(i1: bv24, i2: bv24) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv24(i1: bv24, i2: bv24) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv32.bool(i1: bv32, i2: bv32) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv32(i1: bv32, i2: bv32) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv48.bool(i1: bv48, i2: bv48) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv48(i1: bv48, i2: bv48) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv64.bool(i1: bv64, i2: bv64) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv64(i1: bv64, i2: bv64) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv8.bool(i1: bv8, i2: bv8) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv8(i1: bv8, i2: bv8) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv96.bool(i1: bv96, i2: bv96) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv96(i1: bv96, i2: bv96) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 != i2) }
function {:inline} $ne.i1(i1: i1, i2: i1) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 != i2) }
function {:inline} $ne.i128(i1: i128, i2: i128) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 != i2) }
function {:inline} $ne.i16(i1: i16, i2: i16) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 != i2) }
function {:inline} $ne.i24(i1: i24, i2: i24) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 != i2) }
function {:inline} $ne.i32(i1: i32, i2: i32) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 != i2) }
function {:inline} $ne.i48(i1: i48, i2: i48) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 != i2) }
function {:inline} $ne.i64(i1: i64, i2: i64) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 != i2) }
function {:inline} $ne.i8(i1: i8, i2: i8) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 != i2) }
function {:inline} $ne.i96(i1: i96, i2: i96) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $sext.bv1.bv128(i: bv1) returns (bv128) { (if (i == 0bv1) then 0bv128 else 340282366920938463463374607431768211455bv128) }
function {:inline} $sext.bv1.bv16(i: bv1) returns (bv16) { (if (i == 0bv1) then 0bv16 else 65535bv16) }
function {:inline} $sext.bv1.bv24(i: bv1) returns (bv24) { (if (i == 0bv1) then 0bv24 else 16777215bv24) }
function {:inline} $sext.bv1.bv32(i: bv1) returns (bv32) { (if (i == 0bv1) then 0bv32 else 4294967295bv32) }
function {:inline} $sext.bv1.bv48(i: bv1) returns (bv48) { (if (i == 0bv1) then 0bv48 else 281474976710655bv48) }
function {:inline} $sext.bv1.bv64(i: bv1) returns (bv64) { (if (i == 0bv1) then 0bv64 else 18446744073709551615bv64) }
function {:inline} $sext.bv1.bv8(i: bv1) returns (bv8) { (if (i == 0bv1) then 0bv8 else 255bv8) }
function {:inline} $sext.bv1.bv96(i: bv1) returns (bv96) { (if (i == 0bv1) then 0bv96 else 79228162514264337593543950335bv96) }
function {:inline} $sext.i1.i128(i: i1) returns (i128) { i }
function {:inline} $sext.i1.i16(i: i1) returns (i16) { i }
function {:inline} $sext.i1.i24(i: i1) returns (i24) { i }
function {:inline} $sext.i1.i32(i: i1) returns (i32) { i }
function {:inline} $sext.i1.i48(i: i1) returns (i48) { i }
function {:inline} $sext.i1.i64(i: i1) returns (i64) { i }
function {:inline} $sext.i1.i8(i: i1) returns (i8) { i }
function {:inline} $sext.i1.i96(i: i1) returns (i96) { i }
function {:inline} $sext.i16.i128(i: i16) returns (i128) { i }
function {:inline} $sext.i16.i24(i: i16) returns (i24) { i }
function {:inline} $sext.i16.i32(i: i16) returns (i32) { i }
function {:inline} $sext.i16.i48(i: i16) returns (i48) { i }
function {:inline} $sext.i16.i64(i: i16) returns (i64) { i }
function {:inline} $sext.i16.i96(i: i16) returns (i96) { i }
function {:inline} $sext.i24.i128(i: i24) returns (i128) { i }
function {:inline} $sext.i24.i32(i: i24) returns (i32) { i }
function {:inline} $sext.i24.i48(i: i24) returns (i48) { i }
function {:inline} $sext.i24.i64(i: i24) returns (i64) { i }
function {:inline} $sext.i24.i96(i: i24) returns (i96) { i }
function {:inline} $sext.i32.i128(i: i32) returns (i128) { i }
function {:inline} $sext.i32.i48(i: i32) returns (i48) { i }
function {:inline} $sext.i32.i64(i: i32) returns (i64) { i }
function {:inline} $sext.i32.i96(i: i32) returns (i96) { i }
function {:inline} $sext.i48.i128(i: i48) returns (i128) { i }
function {:inline} $sext.i48.i64(i: i48) returns (i64) { i }
function {:inline} $sext.i48.i96(i: i48) returns (i96) { i }
function {:inline} $sext.i64.i128(i: i64) returns (i128) { i }
function {:inline} $sext.i64.i96(i: i64) returns (i96) { i }
function {:inline} $sext.i8.i128(i: i8) returns (i128) { i }
function {:inline} $sext.i8.i16(i: i8) returns (i16) { i }
function {:inline} $sext.i8.i24(i: i8) returns (i24) { i }
function {:inline} $sext.i8.i32(i: i8) returns (i32) { i }
function {:inline} $sext.i8.i48(i: i8) returns (i48) { i }
function {:inline} $sext.i8.i64(i: i8) returns (i64) { i }
function {:inline} $sext.i8.i96(i: i8) returns (i96) { i }
function {:inline} $sext.i96.i128(i: i96) returns (i128) { i }
function {:inline} $sge.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i1(i1: i1, i2: i1) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i128(i1: i128, i2: i128) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i16(i1: i16, i2: i16) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i24(i1: i24, i2: i24) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i32(i1: i32, i2: i32) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i48(i1: i48, i2: i48) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i64(i1: i64, i2: i64) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i8(i1: i8, i2: i8) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i96(i1: i96, i2: i96) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sgt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i48(i1: i48, i2: i48) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sle.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i1(i1: i1, i2: i1) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i128(i1: i128, i2: i128) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i16(i1: i16, i2: i16) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i24(i1: i24, i2: i24) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i32(i1: i32, i2: i32) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i48(i1: i48, i2: i48) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i64(i1: i64, i2: i64) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i8(i1: i8, i2: i8) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i96(i1: i96, i2: i96) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $slt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 < i2) }
function {:inline} $slt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 < i2) }
function {:inline} $slt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 < i2) }
function {:inline} $slt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 < i2) }
function {:inline} $slt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 < i2) }
function {:inline} $slt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 < i2) }
function {:inline} $slt.i48(i1: i48, i2: i48) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 < i2) }
function {:inline} $slt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 < i2) }
function {:inline} $slt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 < i2) }
function {:inline} $slt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $smax.i1(i1: i1, i2: i1) returns (i1) { $max(i1,i2) }
function {:inline} $smax.i128(i1: i128, i2: i128) returns (i128) { $max(i1,i2) }
function {:inline} $smax.i16(i1: i16, i2: i16) returns (i16) { $max(i1,i2) }
function {:inline} $smax.i24(i1: i24, i2: i24) returns (i24) { $max(i1,i2) }
function {:inline} $smax.i32(i1: i32, i2: i32) returns (i32) { $max(i1,i2) }
function {:inline} $smax.i48(i1: i48, i2: i48) returns (i48) { $max(i1,i2) }
function {:inline} $smax.i64(i1: i64, i2: i64) returns (i64) { $max(i1,i2) }
function {:inline} $smax.i8(i1: i8, i2: i8) returns (i8) { $max(i1,i2) }
function {:inline} $smax.i96(i1: i96, i2: i96) returns (i96) { $max(i1,i2) }
function {:inline} $smin.i1(i1: i1, i2: i1) returns (i1) { $min(i1,i2) }
function {:inline} $smin.i128(i1: i128, i2: i128) returns (i128) { $min(i1,i2) }
function {:inline} $smin.i16(i1: i16, i2: i16) returns (i16) { $min(i1,i2) }
function {:inline} $smin.i24(i1: i24, i2: i24) returns (i24) { $min(i1,i2) }
function {:inline} $smin.i32(i1: i32, i2: i32) returns (i32) { $min(i1,i2) }
function {:inline} $smin.i48(i1: i48, i2: i48) returns (i48) { $min(i1,i2) }
function {:inline} $smin.i64(i1: i64, i2: i64) returns (i64) { $min(i1,i2) }
function {:inline} $smin.i8(i1: i8, i2: i8) returns (i8) { $min(i1,i2) }
function {:inline} $smin.i96(i1: i96, i2: i96) returns (i96) { $min(i1,i2) }
function {:inline} $store.bv128(M: [ref] bv128, p: ref, v: bv128) returns ([ref] bv128) { M[p := v] }
function {:inline} $store.bv16(M: [ref] bv16, p: ref, v: bv16) returns ([ref] bv16) { M[p := v] }
function {:inline} $store.bv24(M: [ref] bv24, p: ref, v: bv24) returns ([ref] bv24) { M[p := v] }
function {:inline} $store.bv32(M: [ref] bv32, p: ref, v: bv32) returns ([ref] bv32) { M[p := v] }
function {:inline} $store.bv48(M: [ref] bv48, p: ref, v: bv48) returns ([ref] bv48) { M[p := v] }
function {:inline} $store.bv64(M: [ref] bv64, p: ref, v: bv64) returns ([ref] bv64) { M[p := v] }
function {:inline} $store.bv8(M: [ref] bv8, p: ref, v: bv8) returns ([ref] bv8) { M[p := v] }
function {:inline} $store.bv96(M: [ref] bv96, p: ref, v: bv96) returns ([ref] bv96) { M[p := v] }
function {:inline} $store.bytes.bv128(M: [ref] bv8, p: ref, v: bv128) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]][$add.ref(p,$7.ref) := v[72:64]][$add.ref(p,$8.ref) := v[80:72]][$add.ref(p,$9.ref) := v[88:80]][$add.ref(p,$10.ref) := v[96:88]][$add.ref(p,$11.ref) := v[104:96]][$add.ref(p,$12.ref) := v[112:104]][$add.ref(p,$13.ref) := v[120:112]][$add.ref(p,$14.ref) := v[128:120]] }
function {:inline} $store.bytes.bv16(M: [ref] bv8, p: ref, v: bv16) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]] }
function {:inline} $store.bytes.bv24(M: [ref] bv8, p: ref, v: bv24) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]] }
function {:inline} $store.bytes.bv32(M: [ref] bv8, p: ref, v: bv32) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]] }
function {:inline} $store.bytes.bv48(M: [ref] bv8, p: ref, v: bv48) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]] }
function {:inline} $store.bytes.bv64(M: [ref] bv8, p: ref, v: bv64) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]] }
function {:inline} $store.bytes.bv8(M: [ref] bv8, p: ref, v: bv8) returns ([ref] bv8) { M[p := v] }
function {:inline} $store.bytes.bv96(M: [ref] bv8, p: ref, v: bv96) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]][$add.ref(p,$7.ref) := v[72:64]][$add.ref(p,$8.ref) := v[80:72]][$add.ref(p,$9.ref) := v[88:80]][$add.ref(p,$10.ref) := v[96:88]] }
function {:inline} $store.float(M: [ref] float, p: ref, v: float) returns ([ref] float) { M[p := v] }
function {:inline} $store.i128(M: [ref] i128, p: ref, v: i128) returns ([ref] i128) { M[p := v] }
function {:inline} $store.i16(M: [ref] i16, p: ref, v: i16) returns ([ref] i16) { M[p := v] }
function {:inline} $store.i24(M: [ref] i24, p: ref, v: i24) returns ([ref] i24) { M[p := v] }
function {:inline} $store.i32(M: [ref] i32, p: ref, v: i32) returns ([ref] i32) { M[p := v] }
function {:inline} $store.i48(M: [ref] i48, p: ref, v: i48) returns ([ref] i48) { M[p := v] }
function {:inline} $store.i64(M: [ref] i64, p: ref, v: i64) returns ([ref] i64) { M[p := v] }
function {:inline} $store.i8(M: [ref] i8, p: ref, v: i8) returns ([ref] i8) { M[p := v] }
function {:inline} $store.i96(M: [ref] i96, p: ref, v: i96) returns ([ref] i96) { M[p := v] }
function {:inline} $store.ref(M: [ref] ref, p: ref, v: ref) returns ([ref] ref) { M[p := v] }
function {:inline} $sub.i1(i1: i1, i2: i1) returns (i1) { (i1 - i2) }
function {:inline} $sub.i128(i1: i128, i2: i128) returns (i128) { (i1 - i2) }
function {:inline} $sub.i16(i1: i16, i2: i16) returns (i16) { (i1 - i2) }
function {:inline} $sub.i24(i1: i24, i2: i24) returns (i24) { (i1 - i2) }
function {:inline} $sub.i32(i1: i32, i2: i32) returns (i32) { (i1 - i2) }
function {:inline} $sub.i48(i1: i48, i2: i48) returns (i48) { (i1 - i2) }
function {:inline} $sub.i64(i1: i64, i2: i64) returns (i64) { (i1 - i2) }
function {:inline} $sub.i8(i1: i8, i2: i8) returns (i8) { (i1 - i2) }
function {:inline} $sub.i96(i1: i96, i2: i96) returns (i96) { (i1 - i2) }
function {:inline} $trunc.bv128.bv1(i: bv128) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv128.bv16(i: bv128) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv128.bv24(i: bv128) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv128.bv32(i: bv128) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv128.bv48(i: bv128) returns (bv48) { i[48:0] }
function {:inline} $trunc.bv128.bv64(i: bv128) returns (bv64) { i[64:0] }
function {:inline} $trunc.bv128.bv8(i: bv128) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv128.bv96(i: bv128) returns (bv96) { i[96:0] }
function {:inline} $trunc.bv16.bv1(i: bv16) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv16.bv8(i: bv16) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv24.bv1(i: bv24) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv24.bv16(i: bv24) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv24.bv8(i: bv24) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv32.bv1(i: bv32) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv32.bv16(i: bv32) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv32.bv24(i: bv32) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv32.bv8(i: bv32) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv48.bv1(i: bv48) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv48.bv16(i: bv48) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv48.bv24(i: bv48) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv48.bv32(i: bv48) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv48.bv8(i: bv48) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv64.bv1(i: bv64) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv64.bv16(i: bv64) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv64.bv24(i: bv64) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv64.bv32(i: bv64) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv64.bv48(i: bv64) returns (bv48) { i[48:0] }
function {:inline} $trunc.bv64.bv8(i: bv64) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv8.bv1(i: bv8) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv96.bv1(i: bv96) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv96.bv16(i: bv96) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv96.bv24(i: bv96) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv96.bv32(i: bv96) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv96.bv48(i: bv96) returns (bv48) { i[48:0] }
function {:inline} $trunc.bv96.bv64(i: bv96) returns (bv64) { i[64:0] }
function {:inline} $trunc.bv96.bv8(i: bv96) returns (bv8) { i[8:0] }
function {:inline} $trunc.i128.i1(i: i128) returns (i1) { i }
function {:inline} $trunc.i128.i16(i: i128) returns (i16) { i }
function {:inline} $trunc.i128.i24(i: i128) returns (i24) { i }
function {:inline} $trunc.i128.i32(i: i128) returns (i32) { i }
function {:inline} $trunc.i128.i48(i: i128) returns (i48) { i }
function {:inline} $trunc.i128.i64(i: i128) returns (i64) { i }
function {:inline} $trunc.i128.i8(i: i128) returns (i8) { i }
function {:inline} $trunc.i128.i96(i: i128) returns (i96) { i }
function {:inline} $trunc.i16.i1(i: i16) returns (i1) { i }
function {:inline} $trunc.i16.i8(i: i16) returns (i8) { i }
function {:inline} $trunc.i24.i1(i: i24) returns (i1) { i }
function {:inline} $trunc.i24.i16(i: i24) returns (i16) { i }
function {:inline} $trunc.i24.i8(i: i24) returns (i8) { i }
function {:inline} $trunc.i32.i1(i: i32) returns (i1) { i }
function {:inline} $trunc.i32.i16(i: i32) returns (i16) { i }
function {:inline} $trunc.i32.i24(i: i32) returns (i24) { i }
function {:inline} $trunc.i32.i8(i: i32) returns (i8) { i }
function {:inline} $trunc.i48.i1(i: i48) returns (i1) { i }
function {:inline} $trunc.i48.i16(i: i48) returns (i16) { i }
function {:inline} $trunc.i48.i24(i: i48) returns (i24) { i }
function {:inline} $trunc.i48.i32(i: i48) returns (i32) { i }
function {:inline} $trunc.i48.i8(i: i48) returns (i8) { i }
function {:inline} $trunc.i64.i1(i: i64) returns (i1) { i }
function {:inline} $trunc.i64.i16(i: i64) returns (i16) { i }
function {:inline} $trunc.i64.i24(i: i64) returns (i24) { i }
function {:inline} $trunc.i64.i32(i: i64) returns (i32) { i }
function {:inline} $trunc.i64.i48(i: i64) returns (i48) { i }
function {:inline} $trunc.i64.i8(i: i64) returns (i8) { i }
function {:inline} $trunc.i8.i1(i: i8) returns (i1) { i }
function {:inline} $trunc.i96.i1(i: i96) returns (i1) { i }
function {:inline} $trunc.i96.i16(i: i96) returns (i16) { i }
function {:inline} $trunc.i96.i24(i: i96) returns (i24) { i }
function {:inline} $trunc.i96.i32(i: i96) returns (i32) { i }
function {:inline} $trunc.i96.i48(i: i96) returns (i48) { i }
function {:inline} $trunc.i96.i64(i: i96) returns (i64) { i }
function {:inline} $trunc.i96.i8(i: i96) returns (i8) { i }
function {:inline} $uge.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i1(i1: i1, i2: i1) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i128(i1: i128, i2: i128) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i16(i1: i16, i2: i16) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i24(i1: i24, i2: i24) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i32(i1: i32, i2: i32) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i48(i1: i48, i2: i48) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i64(i1: i64, i2: i64) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i8(i1: i8, i2: i8) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i96(i1: i96, i2: i96) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $ugt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i48(i1: i48, i2: i48) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ule.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i1(i1: i1, i2: i1) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i128(i1: i128, i2: i128) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i16(i1: i16, i2: i16) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i24(i1: i24, i2: i24) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i32(i1: i32, i2: i32) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i48(i1: i48, i2: i48) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i64(i1: i64, i2: i64) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i8(i1: i8, i2: i8) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i96(i1: i96, i2: i96) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ult.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 < i2) }
function {:inline} $ult.i1(i1: i1, i2: i1) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 < i2) }
function {:inline} $ult.i128(i1: i128, i2: i128) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 < i2) }
function {:inline} $ult.i16(i1: i16, i2: i16) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 < i2) }
function {:inline} $ult.i24(i1: i24, i2: i24) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 < i2) }
function {:inline} $ult.i32(i1: i32, i2: i32) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i48.bool(i1: i48, i2: i48) returns (bool) { (i1 < i2) }
function {:inline} $ult.i48(i1: i48, i2: i48) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 < i2) }
function {:inline} $ult.i64(i1: i64, i2: i64) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 < i2) }
function {:inline} $ult.i8(i1: i8, i2: i8) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 < i2) }
function {:inline} $ult.i96(i1: i96, i2: i96) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $umax.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ugt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $ugt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $ugt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $ugt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $ugt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv48(i1: bv48, i2: bv48) returns (bv48) { (if $ugt.bv48.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $ugt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $ugt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $ugt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.i1(i1: i1, i2: i1) returns (i1) { $max(i1,i2) }
function {:inline} $umax.i128(i1: i128, i2: i128) returns (i128) { $max(i1,i2) }
function {:inline} $umax.i16(i1: i16, i2: i16) returns (i16) { $max(i1,i2) }
function {:inline} $umax.i24(i1: i24, i2: i24) returns (i24) { $max(i1,i2) }
function {:inline} $umax.i32(i1: i32, i2: i32) returns (i32) { $max(i1,i2) }
function {:inline} $umax.i48(i1: i48, i2: i48) returns (i48) { $max(i1,i2) }
function {:inline} $umax.i64(i1: i64, i2: i64) returns (i64) { $max(i1,i2) }
function {:inline} $umax.i8(i1: i8, i2: i8) returns (i8) { $max(i1,i2) }
function {:inline} $umax.i96(i1: i96, i2: i96) returns (i96) { $max(i1,i2) }
function {:inline} $umin.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ult.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $ult.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $ult.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $ult.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $ult.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv48(i1: bv48, i2: bv48) returns (bv48) { (if $ult.bv48.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $ult.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $ult.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $ult.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.i1(i1: i1, i2: i1) returns (i1) { $min(i1,i2) }
function {:inline} $umin.i128(i1: i128, i2: i128) returns (i128) { $min(i1,i2) }
function {:inline} $umin.i16(i1: i16, i2: i16) returns (i16) { $min(i1,i2) }
function {:inline} $umin.i24(i1: i24, i2: i24) returns (i24) { $min(i1,i2) }
function {:inline} $umin.i32(i1: i32, i2: i32) returns (i32) { $min(i1,i2) }
function {:inline} $umin.i48(i1: i48, i2: i48) returns (i48) { $min(i1,i2) }
function {:inline} $umin.i64(i1: i64, i2: i64) returns (i64) { $min(i1,i2) }
function {:inline} $umin.i8(i1: i8, i2: i8) returns (i8) { $min(i1,i2) }
function {:inline} $umin.i96(i1: i96, i2: i96) returns (i96) { $min(i1,i2) }
function {:inline} $zext.bv1.bv128(i: bv1) returns (bv128) { (if (i == 0bv1) then 0bv128 else 1bv128) }
function {:inline} $zext.bv1.bv16(i: bv1) returns (bv16) { (if (i == 0bv1) then 0bv16 else 1bv16) }
function {:inline} $zext.bv1.bv24(i: bv1) returns (bv24) { (if (i == 0bv1) then 0bv24 else 1bv24) }
function {:inline} $zext.bv1.bv32(i: bv1) returns (bv32) { (if (i == 0bv1) then 0bv32 else 1bv32) }
function {:inline} $zext.bv1.bv48(i: bv1) returns (bv48) { (if (i == 0bv1) then 0bv48 else 1bv48) }
function {:inline} $zext.bv1.bv64(i: bv1) returns (bv64) { (if (i == 0bv1) then 0bv64 else 1bv64) }
function {:inline} $zext.bv1.bv8(i: bv1) returns (bv8) { (if (i == 0bv1) then 0bv8 else 1bv8) }
function {:inline} $zext.bv1.bv96(i: bv1) returns (bv96) { (if (i == 0bv1) then 0bv96 else 1bv96) }
function {:inline} $zext.i1.i128(i: i1) returns (i128) { i }
function {:inline} $zext.i1.i16(i: i1) returns (i16) { i }
function {:inline} $zext.i1.i24(i: i1) returns (i24) { i }
function {:inline} $zext.i1.i32(i: i1) returns (i32) { i }
function {:inline} $zext.i1.i48(i: i1) returns (i48) { i }
function {:inline} $zext.i1.i64(i: i1) returns (i64) { i }
function {:inline} $zext.i1.i8(i: i1) returns (i8) { i }
function {:inline} $zext.i1.i96(i: i1) returns (i96) { i }
function {:inline} $zext.i16.i128(i: i16) returns (i128) { i }
function {:inline} $zext.i16.i24(i: i16) returns (i24) { i }
function {:inline} $zext.i16.i32(i: i16) returns (i32) { i }
function {:inline} $zext.i16.i48(i: i16) returns (i48) { i }
function {:inline} $zext.i16.i64(i: i16) returns (i64) { i }
function {:inline} $zext.i16.i96(i: i16) returns (i96) { i }
function {:inline} $zext.i24.i128(i: i24) returns (i128) { i }
function {:inline} $zext.i24.i32(i: i24) returns (i32) { i }
function {:inline} $zext.i24.i48(i: i24) returns (i48) { i }
function {:inline} $zext.i24.i64(i: i24) returns (i64) { i }
function {:inline} $zext.i24.i96(i: i24) returns (i96) { i }
function {:inline} $zext.i32.i128(i: i32) returns (i128) { i }
function {:inline} $zext.i32.i48(i: i32) returns (i48) { i }
function {:inline} $zext.i32.i64(i: i32) returns (i64) { i }
function {:inline} $zext.i32.i96(i: i32) returns (i96) { i }
function {:inline} $zext.i48.i128(i: i48) returns (i128) { i }
function {:inline} $zext.i48.i64(i: i48) returns (i64) { i }
function {:inline} $zext.i48.i96(i: i48) returns (i96) { i }
function {:inline} $zext.i64.i128(i: i64) returns (i128) { i }
function {:inline} $zext.i64.i96(i: i64) returns (i96) { i }
function {:inline} $zext.i8.i128(i: i8) returns (i128) { i }
function {:inline} $zext.i8.i16(i: i8) returns (i16) { i }
function {:inline} $zext.i8.i24(i: i8) returns (i24) { i }
function {:inline} $zext.i8.i32(i: i8) returns (i32) { i }
function {:inline} $zext.i8.i48(i: i8) returns (i48) { i }
function {:inline} $zext.i8.i64(i: i8) returns (i64) { i }
function {:inline} $zext.i8.i96(i: i8) returns (i96) { i }
function {:inline} $zext.i96.i128(i: i96) returns (i128) { i }
procedure {:inline 1} $alloc(n: ref) returns (p: ref)
modifies $CurrAddr, $Alloc;
{
  assume $sgt.ref.bool($CurrAddr,$0.ref);
  p := $CurrAddr;
  if ($sgt.ref.bool(n,$0.ref)) {
    $CurrAddr := $add.ref($CurrAddr,n);
  }
  $Alloc[p] := true;
}
procedure {:inline 1} $free(p: ref)
modifies $Alloc;
{
  $Alloc[p] := false;
}
procedure {:inline 1} boogie_si_record_bool(i: bool);
procedure {:inline 1} boogie_si_record_bv1(i: bv1);
procedure {:inline 1} boogie_si_record_bv128(i: bv128);
procedure {:inline 1} boogie_si_record_bv16(i: bv16);
procedure {:inline 1} boogie_si_record_bv24(i: bv24);
procedure {:inline 1} boogie_si_record_bv32(i: bv32);
procedure {:inline 1} boogie_si_record_bv48(i: bv48);
procedure {:inline 1} boogie_si_record_bv64(i: bv64);
procedure {:inline 1} boogie_si_record_bv8(i: bv8);
procedure {:inline 1} boogie_si_record_bv96(i: bv96);
procedure {:inline 1} boogie_si_record_float(i: float);
procedure {:inline 1} boogie_si_record_i1(i: i1);
procedure {:inline 1} boogie_si_record_i128(i: i128);
procedure {:inline 1} boogie_si_record_i16(i: i16);
procedure {:inline 1} boogie_si_record_i24(i: i24);
procedure {:inline 1} boogie_si_record_i32(i: i32);
procedure {:inline 1} boogie_si_record_i48(i: i48);
procedure {:inline 1} boogie_si_record_i64(i: i64);
procedure {:inline 1} boogie_si_record_i8(i: i8);
procedure {:inline 1} boogie_si_record_i96(i: i96);
procedure {:inline 1} boogie_si_record_mop(m: $mop);
procedure {:inline 1} boogie_si_record_ref(i: ref);
type $mop;
var $Alloc: [ref] bool;
var $Alloc.shadow: [ref] bool;
var $CurrAddr: ref;
var $CurrAddr.shadow: ref;
var $exn: bool;
var $exn.shadow: bool;
var $exnv: int;
var $exnv.shadow: int;
var $shadow_ok: bool;