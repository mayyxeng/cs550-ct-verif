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
var $M.1: [ref] ref;
var $M.1.shadow: [ref] ref;
var $M.2: [ref] i64;
var $M.2.shadow: [ref] i64;
var $M.3: [ref] i64;
var $M.3.shadow: [ref] i64;
var $M.4: [ref] ref;
var $M.4.shadow: [ref] ref;
axiom ($GLOBALS_BOTTOM == $sub.ref(0,1659));
axiom ($EXTERNS_BOTTOM == $sub.ref(0,32776));
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
const .str2: ref;
const .str3: ref;
const .str990: ref;
const EVP_CIPHER_CTX_cleanup: ref;
const EVP_CIPHER_CTX_init: ref;
const EVP_EncryptInit_ex: ref;
const EVP_EncryptUpdate: ref;
const EVP_aes_256_ctr: ref;
const FFT_add: ref;
const FFT_mul: ref;
const OPENSSL_cleanse: ref;
const RANDOM192: ref;
const RANDOM32: ref;
const RANDOM64: ref;
const RAND_bytes: ref;
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
const abort: ref;
const cmplt_ct: ref;
const ct_isnonzero_u64: ref;
const ct_lt_u64: ref;
const ct_mask_u64: ref;
const ct_ne_u64: ref;
const dbl: ref;
const fprintf: ref;
const llvm.dbg.declare: ref;
const llvm.dbg.value: ref;
const llvm.memset.p0i8.i64: ref;
const memset: ref;
const public_in: ref;
const rlwe_memset_volatile: ref;
const rlwe_sample_ct: ref;
const {:count 52} rlwe_table: ref;
const sample_ct_wrapper: ref;
const single_sample: ref;
const stderr: ref;
procedure {:inline 1} $initialize()
modifies $CurrAddr, $exn;
modifies $M.4, $M.3;
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
procedure {:inline 1} EVP_CIPHER_CTX_cleanup($p0: ref, $p0.shadow: ref) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} EVP_CIPHER_CTX_init($p0: ref, $p0.shadow: ref);
procedure {:inline 1} EVP_EncryptInit_ex($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref, $p2: ref, $p2.shadow: ref, $p3: ref, $p3.shadow: ref, $p4: ref, $p4.shadow: ref) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} EVP_EncryptUpdate($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref, $p2: ref, $p2.shadow: ref, $p3: ref, $p3.shadow: ref, $i4: i32, $i4.shadow: i32) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} EVP_aes_256_ctr() returns ($r: ref, $r.shadow: ref);
procedure {:inline 1} FFT_add($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref, $p2: ref, $p2.shadow: ref);
procedure {:inline 1} FFT_mul($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref, $p2: ref, $p2.shadow: ref, $p3: ref, $p3.shadow: ref);
procedure {:inline 1} OPENSSL_cleanse($p0: ref, $p0.shadow: ref, $i1: i64, $i1.shadow: i64);
procedure {:inline 1} RANDOM192(r: ref, r.shadow: ref, rand_ctx: ref, rand_ctx.shadow: ref)
modifies $M.0, $exn;
modifies $CurrAddr, $Alloc;
{
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i1;
  var $i6.shadow: i1;
  var $i8: i32;
  var $i8.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  call $p0 := $alloc($mul.ref(24,$zext.i32.i64(1)));
  $p0.shadow := $p0;
  call $p1 := $alloc($mul.ref(4,$zext.i32.i64(1)));
  $p1.shadow := $p1;
  call {:cexpr "r"} boogie_si_record_ref(r);
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 49, 2} true;
  $p2 := $bitcast.ref.ref($p0);
  $p2.shadow := $bitcast.ref.ref($p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 49, 2} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  call $M.0, $M.0.shadow := $memset.i8($M.0, $M.0.shadow, $p2, $p2.shadow, 0, 0, 24, 24, $zext.i32.i64(16), $zext.i32.i64(16), (0 == 1), (0 == 1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 50, 2} true;
  $p3 := $bitcast.ref.ref(r);
  $p3.shadow := $bitcast.ref.ref(r.shadow);
  call {:cexpr "out"} boogie_si_record_ref($p3);
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 52, 12} true;
  $p4 := $p0;
  $p4.shadow := $p0.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 52, 12} true;
  call $i5, $i5.shadow := EVP_EncryptUpdate(rand_ctx, rand_ctx.shadow, $p3, $p3.shadow, $p1, $p1.shadow, $p4, $p4.shadow, 24, 24);
  call {:cexpr "ret"} boogie_si_record_i32($i5);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 53, 6} true;
  $i6 := $ne.i32($i5,1);
  $i6.shadow := $ne.i32($i5.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 53, 6} true;
  assume {:branchcond $i6} true;
  $shadow_ok := ($shadow_ok && ($i6 == $i6.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i6 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 54, 3} true;
  $shadow_ok := ($shadow_ok && (stderr == stderr));
  $p7 := $load.ref($M.1,stderr);
  $p7.shadow := $load.ref($M.1.shadow,stderr);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 54, 3} true;
  call $i8, $i8.shadow := fprintf.ref.ref($p7, $p7.shadow, .str990, .str990);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 55, 3} true;
  call abort();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 55, 3} true;
  assume false;
$bb2:
  assume !($i6 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 57, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} RANDOM32(rand_ctx: ref, rand_ctx.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $exn;
modifies $M.0;
modifies $CurrAddr, $Alloc;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i32;
  var $i1.shadow: i32;
$bb0:
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 32, 20} true;
  call $i0, $i0.shadow := RANDOM64(rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 32, 20} true;
  $i1 := $trunc.i64.i32($i0);
  $i1.shadow := $trunc.i64.i32($i0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 32, 20} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} RANDOM64(rand_ctx: ref, rand_ctx.shadow: ref) returns ($r: i64, $r.shadow: i64)
modifies $M.0, $exn;
modifies $CurrAddr, $Alloc;
{
  var $i10: i32;
  var $i10.shadow: i32;
  var $i13: i64;
  var $i13.shadow: i64;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i8: i1;
  var $i8.shadow: i1;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p11: ref;
  var $p11.shadow: ref;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
  var $p9: ref;
  var $p9.shadow: ref;
$bb0:
  call $p0 := $alloc($mul.ref(16,$zext.i32.i64(1)));
  $p0.shadow := $p0;
  call $p1 := $alloc($mul.ref(16,$zext.i32.i64(1)));
  $p1.shadow := $p1;
  call $p2 := $alloc($mul.ref(4,$zext.i32.i64(1)));
  $p2.shadow := $p2;
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 36, 2} true;
  $p3 := $bitcast.ref.ref($p0);
  $p3.shadow := $bitcast.ref.ref($p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 36, 2} true;
  $shadow_ok := ($shadow_ok && ($p3 == $p3.shadow));
  call $M.0, $M.0.shadow := $memset.i8($M.0, $M.0.shadow, $p3, $p3.shadow, 0, 0, 16, 16, $zext.i32.i64(16), $zext.i32.i64(16), (0 == 1), (0 == 1));
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 37, 2} true;
  $p4 := $bitcast.ref.ref($p1);
  $p4.shadow := $bitcast.ref.ref($p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 37, 2} true;
  $shadow_ok := ($shadow_ok && ($p4 == $p4.shadow));
  call $M.0, $M.0.shadow := $memset.i8($M.0, $M.0.shadow, $p4, $p4.shadow, 0, 0, 16, 16, $zext.i32.i64(16), $zext.i32.i64(16), (0 == 1), (0 == 1));
  assume true;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 39, 12} true;
  $p5 := $p1;
  $p5.shadow := $p1.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 39, 12} true;
  $p6 := $p0;
  $p6.shadow := $p0.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 39, 12} true;
  call $i7, $i7.shadow := EVP_EncryptUpdate(rand_ctx, rand_ctx.shadow, $p5, $p5.shadow, $p2, $p2.shadow, $p6, $p6.shadow, 16, 16);
  call {:cexpr "ret"} boogie_si_record_i32($i7);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 40, 6} true;
  $i8 := $ne.i32($i7,1);
  $i8.shadow := $ne.i32($i7.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 40, 6} true;
  assume {:branchcond $i8} true;
  $shadow_ok := ($shadow_ok && ($i8 == $i8.shadow));
  goto $bb1, $bb2;
$bb1:
  assume ($i8 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 41, 3} true;
  $shadow_ok := ($shadow_ok && (stderr == stderr));
  $p9 := $load.ref($M.1,stderr);
  $p9.shadow := $load.ref($M.1.shadow,stderr);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 41, 3} true;
  call $i10, $i10.shadow := fprintf.ref.ref($p9, $p9.shadow, .str990, .str990);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 42, 3} true;
  call abort();
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 42, 3} true;
  assume false;
$bb2:
  assume !($i8 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 44, 2} true;
  $p11 := $p1;
  $p11.shadow := $p1.shadow;
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 44, 2} true;
  $p12 := $bitcast.ref.ref($p11);
  $p12.shadow := $bitcast.ref.ref($p11.shadow);
  call {:cexpr "x"} boogie_si_record_ref($p12);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 45, 2} true;
  $shadow_ok := ($shadow_ok && ($p12 == $p12.shadow));
  $i13 := $load.i64($M.0,$p12);
  $i13.shadow := $load.i64($M.0.shadow,$p12.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe_rand_openssl_aes.c", 45, 2} true;
  $r := $i13;
  $r.shadow := $i13.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} RAND_bytes($p0: ref, $p0.shadow: ref, $i1: i32, $i1.shadow: i32) returns ($r: i32, $r.shadow: i32);
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
modifies $M.4, $M.3, $exn;
{
$bb0:
  $shadow_ok := ($shadow_ok && (rlwe_memset_volatile == rlwe_memset_volatile));
  $M.4 := $store.ref($M.4,rlwe_memset_volatile,memset);
  $M.4.shadow := $store.ref($M.4.shadow,rlwe_memset_volatile,memset);
  call {:cexpr "rlwe_memset_volatile"} boogie_si_record_ref(memset);
  $shadow_ok := ($shadow_ok && (rlwe_table == rlwe_table));
  $M.3 := $store.i64($M.3,rlwe_table,$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,rlwe_table,$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,8) == $add.ref(rlwe_table,8)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,16) == $add.ref(rlwe_table,16)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,16),2305843009213693951);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,16),2305843009213693951);
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,24) == $add.ref(rlwe_table,24)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,24),$sub.i64(0,2249515437238207198));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,24),$sub.i64(0,2249515437238207198));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,24),8) == $add.ref($add.ref(rlwe_table,24),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,24),8),1592793330845037890);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,24),8),1592793330845037890);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,24),16) == $add.ref($add.ref(rlwe_table,24),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,24),16),6696619706335807527);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,24),16),6696619706335807527);
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,48) == $add.ref(rlwe_table,48)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,48),$sub.i64(0,8285941281797147640));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,48),$sub.i64(0,8285941281797147640));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,48),8) == $add.ref($add.ref(rlwe_table,48),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,48),8),4847211466624024354);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,48),8),4847211466624024354);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,48),16) == $add.ref($add.ref(rlwe_table,48),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,48),16),$sub.i64(0,7960586867416080608));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,48),16),$sub.i64(0,7960586867416080608));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,72) == $add.ref(rlwe_table,72)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,72),1201472555760626235);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,72),1201472555760626235);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,72),8) == $add.ref($add.ref(rlwe_table,72),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,72),8),6729167730292914195);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,72),8),6729167730292914195);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,72),16) == $add.ref($add.ref(rlwe_table,72),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,72),16),$sub.i64(0,4995794346518559821));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,72),16),$sub.i64(0,4995794346518559821));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,96) == $add.ref(rlwe_table,96)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,96),8114521816297691137);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,96),8114521816297691137);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,96),8) == $add.ref($add.ref(rlwe_table,96),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,96),8),1446206685223734562);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,96),8),1446206685223734562);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,96),16) == $add.ref($add.ref(rlwe_table,96),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,96),16),$sub.i64(0,2893150857432154959));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,96),16),$sub.i64(0,2893150857432154959));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,120) == $add.ref(rlwe_table,120)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,120),7099880999596852407);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,120),7099880999596852407);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,120),8) == $add.ref($add.ref(rlwe_table,120),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,120),8),9085210524266802976);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,120),8),9085210524266802976);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,120),16) == $add.ref($add.ref(rlwe_table,120),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,120),16),$sub.i64(0,1541388906239511059));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,120),16),$sub.i64(0,1541388906239511059));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,144) == $add.ref(rlwe_table,144)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,144),3804376278167319566);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,144),3804376278167319566);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,144),8) == $add.ref($add.ref(rlwe_table,144),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,144),8),$sub.i64(0,1742152845963475340));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,144),8),$sub.i64(0,1742152845963475340));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,144),16) == $add.ref($add.ref(rlwe_table,144),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,144),16),$sub.i64(0,753621456182986551));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,144),16),$sub.i64(0,753621456182986551));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,168) == $add.ref(rlwe_table,168)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,168),$sub.i64(0,3088915277557480542));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,168),$sub.i64(0,3088915277557480542));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,168),8) == $add.ref($add.ref(rlwe_table,168),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,168),8),$sub.i64(0,1682248557238023509));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,168),8),$sub.i64(0,1682248557238023509));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,168),16) == $add.ref($add.ref(rlwe_table,168),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,168),16),$sub.i64(0,337462653598058568));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,168),16),$sub.i64(0,337462653598058568));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,192) == $add.ref(rlwe_table,192)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,192),$sub.i64(0,4334180823331202454));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,192),$sub.i64(0,4334180823331202454));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,192),8) == $add.ref($add.ref(rlwe_table,192),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,192),8),1480756976636283163);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,192),8),1480756976636283163);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,192),16) == $add.ref($add.ref(rlwe_table,192),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,192),16),$sub.i64(0,138173630939556141));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,192),16),$sub.i64(0,138173630939556141));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,216) == $add.ref(rlwe_table,216)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,216),3316351689789417462);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,216),3316351689789417462);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,216),8) == $add.ref($add.ref(rlwe_table,216),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,216),8),568664117948907593);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,216),8),568664117948907593);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,216),16) == $add.ref($add.ref(rlwe_table,216),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,216),16),$sub.i64(0,51662715363560952));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,216),16),$sub.i64(0,51662715363560952));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,240) == $add.ref(rlwe_table,240)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,240),$sub.i64(0,221257131472947838));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,240),$sub.i64(0,221257131472947838));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,240),8) == $add.ref($add.ref(rlwe_table,240),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,240),8),1897152060538422174);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,240),8),1897152060538422174);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,240),16) == $add.ref($add.ref(rlwe_table,240),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,240),16),$sub.i64(0,17620197165958014));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,240),16),$sub.i64(0,17620197165958014));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,264) == $add.ref(rlwe_table,264)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,264),5756214254893706272);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,264),5756214254893706272);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,264),8) == $add.ref($add.ref(rlwe_table,264),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,264),8),$sub.i64(0,159424796309251752));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,264),8),$sub.i64(0,159424796309251752));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,264),16) == $add.ref($add.ref(rlwe_table,264),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,264),16),$sub.i64(0,5476926167104741));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,264),16),$sub.i64(0,5476926167104741));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,288) == $add.ref(rlwe_table,288)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,288),$sub.i64(0,6672639234738422049));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,288),$sub.i64(0,6672639234738422049));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,288),8) == $add.ref($add.ref(rlwe_table,288),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,288),8),$sub.i64(0,6414017842826773280));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,288),8),$sub.i64(0,6414017842826773280));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,288),16) == $add.ref($add.ref(rlwe_table,288),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,288),16),$sub.i64(0,1550359866037208));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,288),16),$sub.i64(0,1550359866037208));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,312) == $add.ref(rlwe_table,312)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,312),$sub.i64(0,7124733095156397737));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,312),$sub.i64(0,7124733095156397737));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,312),8) == $add.ref($add.ref(rlwe_table,312),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,312),8),5442209146708233141);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,312),8),5442209146708233141);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,312),16) == $add.ref($add.ref(rlwe_table,312),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,312),16),$sub.i64(0,399417910446676));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,312),16),$sub.i64(0,399417910446676));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,336) == $add.ref(rlwe_table,336)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,336),7727873114359271499);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,336),7727873114359271499);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,336),8) == $add.ref($add.ref(rlwe_table,336),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,336),8),$sub.i64(0,1409008076688890937));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,336),8),$sub.i64(0,1409008076688890937));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,336),16) == $add.ref($add.ref(rlwe_table,336),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,336),16),$sub.i64(0,93604062385515));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,336),16),$sub.i64(0,93604062385515));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,360) == $add.ref(rlwe_table,360)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,360),5244681734649349984);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,360),5244681734649349984);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,360),8) == $add.ref($add.ref(rlwe_table,360),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,360),8),3710793567371725401);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,360),8),3710793567371725401);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,360),16) == $add.ref($add.ref(rlwe_table,360),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,360),16),$sub.i64(0,19945351792932));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,360),16),$sub.i64(0,19945351792932));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,384) == $add.ref(rlwe_table,384)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,384),$sub.i64(0,8914863981107137049));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,384),$sub.i64(0,8914863981107137049));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,384),8) == $add.ref($add.ref(rlwe_table,384),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,384),8),$sub.i64(0,2783652087159636841));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,384),8),$sub.i64(0,2783652087159636841));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,384),16) == $add.ref($add.ref(rlwe_table,384),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,384),16),$sub.i64(0,3862823807334));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,384),16),$sub.i64(0,3862823807334));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,408) == $add.ref(rlwe_table,408)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,408),2576091611781134863);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,408),2576091611781134863);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,408),8) == $add.ref($add.ref(rlwe_table,408),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,408),8),$sub.i64(0,8211448420591766881));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,408),8),$sub.i64(0,8211448420591766881));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,408),16) == $add.ref($add.ref(rlwe_table,408),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,408),16),$sub.i64(0,679742308371));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,408),16),$sub.i64(0,679742308371));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,432) == $add.ref(rlwe_table,432)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,432),$sub.i64(0,8013982477908027129));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,432),$sub.i64(0,8013982477908027129));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,432),8) == $add.ref($add.ref(rlwe_table,432),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,432),8),412597397662358701);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,432),8),412597397662358701);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,432),16) == $add.ref($add.ref(rlwe_table,432),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,432),16),$sub.i64(0,108652460553));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,432),16),$sub.i64(0,108652460553));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,456) == $add.ref(rlwe_table,456)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,456),7579042041359821949);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,456),7579042041359821949);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,456),8) == $add.ref($add.ref(rlwe_table,456),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,456),8),$sub.i64(0,7356358222035343450));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,456),8),$sub.i64(0,7356358222035343450));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,456),16) == $add.ref($add.ref(rlwe_table,456),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,456),16),$sub.i64(0,15771999986));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,456),16),$sub.i64(0,15771999986));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,480) == $add.ref(rlwe_table,480)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,480),2937078737514233032);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,480),2937078737514233032);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,480),8) == $add.ref($add.ref(rlwe_table,480),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,480),8),$sub.i64(0,4115462299849155912));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,480),8),$sub.i64(0,4115462299849155912));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,480),16) == $add.ref($add.ref(rlwe_table,480),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,480),16),$sub.i64(0,2078719010));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,480),16),$sub.i64(0,2078719010));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,504) == $add.ref(rlwe_table,504)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,504),$sub.i64(0,4245259145448324522));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,504),$sub.i64(0,4245259145448324522));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,504),8) == $add.ref($add.ref(rlwe_table,504),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,504),8),5135670640006259933);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,504),8),5135670640006259933);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,504),16) == $add.ref($add.ref(rlwe_table,504),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,504),16),$sub.i64(0,248707092));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,504),16),$sub.i64(0,248707092));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,528) == $add.ref(rlwe_table,528)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,528),4175097344414281274);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,528),4175097344414281274);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,528),8) == $add.ref($add.ref(rlwe_table,528),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,528),8),$sub.i64(0,1269218905647454908));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,528),8),$sub.i64(0,1269218905647454908));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,528),16) == $add.ref($add.ref(rlwe_table,528),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,528),16),$sub.i64(0,27008184));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,528),16),$sub.i64(0,27008184));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,552) == $add.ref(rlwe_table,552)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,552),$sub.i64(0,2372909758022393130));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,552),$sub.i64(0,2372909758022393130));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,552),8) == $add.ref($add.ref(rlwe_table,552),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,552),8),453188373741758787);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,552),8),453188373741758787);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,552),16) == $add.ref($add.ref(rlwe_table,552),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,552),16),$sub.i64(0,2661689));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,552),16),$sub.i64(0,2661689));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,576) == $add.ref(rlwe_table,576)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,576),$sub.i64(0,3622567734810580465));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,576),$sub.i64(0,3622567734810580465));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,576),8) == $add.ref($add.ref(rlwe_table,576),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,576),8),$sub.i64(0,4146984406966275723));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,576),8),$sub.i64(0,4146984406966275723));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,576),16) == $add.ref($add.ref(rlwe_table,576),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,576),16),$sub.i64(0,238025));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,576),16),$sub.i64(0,238025));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,600) == $add.ref(rlwe_table,600)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,600),$sub.i64(0,163987042379365159));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,600),$sub.i64(0,163987042379365159));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,600),8) == $add.ref($add.ref(rlwe_table,600),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,600),8),7691858653836623235);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,600),8),7691858653836623235);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,600),16) == $add.ref($add.ref(rlwe_table,600),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,600),16),$sub.i64(0,19313));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,600),16),$sub.i64(0,19313));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,624) == $add.ref(rlwe_table,624)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,624),4345952454949945553);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,624),4345952454949945553);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,624),8) == $add.ref($add.ref(rlwe_table,624),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,624),8),7599147959704820245);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,624),8),7599147959704820245);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,624),16) == $add.ref($add.ref(rlwe_table,624),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,624),16),$sub.i64(0,1422));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,624),16),$sub.i64(0,1422));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,648) == $add.ref(rlwe_table,648)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,648),1546085497072313971);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,648),1546085497072313971);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,648),8) == $add.ref($add.ref(rlwe_table,648),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,648),8),1366177341857689681);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,648),8),1366177341857689681);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,648),16) == $add.ref($add.ref(rlwe_table,648),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,648),16),$sub.i64(0,95));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,648),16),$sub.i64(0,95));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,672) == $add.ref(rlwe_table,672)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,672),$sub.i64(0,2504620299271065059));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,672),$sub.i64(0,2504620299271065059));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,672),8) == $add.ref($add.ref(rlwe_table,672),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,672),8),4618139318551590258);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,672),8),4618139318551590258);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,672),16) == $add.ref($add.ref(rlwe_table,672),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,672),16),$sub.i64(0,6));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,672),16),$sub.i64(0,6));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,696) == $add.ref(rlwe_table,696)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,696),$sub.i64(0,5429959273906464134));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,696),$sub.i64(0,5429959273906464134));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,696),8) == $add.ref($add.ref(rlwe_table,696),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,696),8),$sub.i64(0,5826855619313110065));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,696),8),$sub.i64(0,5826855619313110065));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,696),16) == $add.ref($add.ref(rlwe_table,696),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,696),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,696),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,720) == $add.ref(rlwe_table,720)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,720),$sub.i64(0,7996868458510334874));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,720),$sub.i64(0,7996868458510334874));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,720),8) == $add.ref($add.ref(rlwe_table,720),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,720),8),$sub.i64(0,290334284935122246));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,720),8),$sub.i64(0,290334284935122246));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,720),16) == $add.ref($add.ref(rlwe_table,720),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,720),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,720),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,744) == $add.ref(rlwe_table,744)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,744),$sub.i64(0,7612316087120139260));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,744),$sub.i64(0,7612316087120139260));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,744),8) == $add.ref($add.ref(rlwe_table,744),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,744),8),$sub.i64(0,13119898084858593));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,744),8),$sub.i64(0,13119898084858593));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,744),16) == $add.ref($add.ref(rlwe_table,744),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,744),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,744),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,768) == $add.ref(rlwe_table,768)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,768),$sub.i64(0,1126051830318683997));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,768),$sub.i64(0,1126051830318683997));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,768),8) == $add.ref($add.ref(rlwe_table,768),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,768),8),$sub.i64(0,537663087921652));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,768),8),$sub.i64(0,537663087921652));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,768),16) == $add.ref($add.ref(rlwe_table,768),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,768),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,768),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,792) == $add.ref(rlwe_table,792)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,792),8638850255858835176);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,792),8638850255858835176);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,792),8) == $add.ref($add.ref(rlwe_table,792),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,792),8),$sub.i64(0,19981096073240));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,792),8),$sub.i64(0,19981096073240));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,792),16) == $add.ref($add.ref(rlwe_table,792),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,792),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,792),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,816) == $add.ref(rlwe_table,816)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,816),$sub.i64(0,7892498872047561718));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,816),$sub.i64(0,7892498872047561718));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,816),8) == $add.ref($add.ref(rlwe_table,816),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,816),8),$sub.i64(0,673350717809));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,816),8),$sub.i64(0,673350717809));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,816),16) == $add.ref($add.ref(rlwe_table,816),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,816),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,816),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,840) == $add.ref(rlwe_table,840)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,840),$sub.i64(0,6541798857842774664));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,840),$sub.i64(0,6541798857842774664));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,840),8) == $add.ref($add.ref(rlwe_table,840),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,840),8),$sub.i64(0,20576029743));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,840),8),$sub.i64(0,20576029743));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,840),16) == $add.ref($add.ref(rlwe_table,840),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,840),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,840),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,864) == $add.ref(rlwe_table,864)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,864),$sub.i64(0,8126034038526992427));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,864),$sub.i64(0,8126034038526992427));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,864),8) == $add.ref($add.ref(rlwe_table,864),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,864),8),$sub.i64(0,570120773));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,864),8),$sub.i64(0,570120773));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,864),16) == $add.ref($add.ref(rlwe_table,864),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,864),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,864),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,888) == $add.ref(rlwe_table,888)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,888),3534731305511073559);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,888),3534731305511073559);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,888),8) == $add.ref($add.ref(rlwe_table,888),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,888),8),$sub.i64(0,14323374));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,888),8),$sub.i64(0,14323374));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,888),16) == $add.ref($add.ref(rlwe_table,888),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,888),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,888),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,912) == $add.ref(rlwe_table,912)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,912),2243259166596724940);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,912),2243259166596724940);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,912),8) == $add.ref($add.ref(rlwe_table,912),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,912),8),$sub.i64(0,326277));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,912),8),$sub.i64(0,326277));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,912),16) == $add.ref($add.ref(rlwe_table,912),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,912),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,912),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,936) == $add.ref(rlwe_table,936)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,936),4371259963399398074);
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,936),4371259963399398074);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,936),8) == $add.ref($add.ref(rlwe_table,936),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,936),8),$sub.i64(0,6739));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,936),8),$sub.i64(0,6739));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,936),16) == $add.ref($add.ref(rlwe_table,936),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,936),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,936),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,960) == $add.ref(rlwe_table,960)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,960),$sub.i64(0,3469514896178575716));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,960),$sub.i64(0,3469514896178575716));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,960),8) == $add.ref($add.ref(rlwe_table,960),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,960),8),$sub.i64(0,127));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,960),8),$sub.i64(0,127));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,960),16) == $add.ref($add.ref(rlwe_table,960),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,960),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,960),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,984) == $add.ref(rlwe_table,984)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,984),$sub.i64(0,2626126821433424814));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,984),$sub.i64(0,2626126821433424814));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,984),8) == $add.ref($add.ref(rlwe_table,984),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,984),8),$sub.i64(0,3));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,984),8),$sub.i64(0,3));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,984),16) == $add.ref($add.ref(rlwe_table,984),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,984),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,984),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1008) == $add.ref(rlwe_table,1008)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1008),$sub.i64(0,608298585034979133));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1008),$sub.i64(0,608298585034979133));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1008),8) == $add.ref($add.ref(rlwe_table,1008),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1008),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1008),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1008),16) == $add.ref($add.ref(rlwe_table,1008),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1008),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1008),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1032) == $add.ref(rlwe_table,1032)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1032),$sub.i64(0,8488755704112603));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1032),$sub.i64(0,8488755704112603));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1032),8) == $add.ref($add.ref(rlwe_table,1032),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1032),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1032),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1032),16) == $add.ref($add.ref(rlwe_table,1032),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1032),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1032),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1056) == $add.ref(rlwe_table,1056)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1056),$sub.i64(0,107396140848310));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1056),$sub.i64(0,107396140848310));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1056),8) == $add.ref($add.ref(rlwe_table,1056),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1056),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1056),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1056),16) == $add.ref($add.ref(rlwe_table,1056),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1056),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1056),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1080) == $add.ref(rlwe_table,1080)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1080),$sub.i64(0,1231815223473));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1080),$sub.i64(0,1231815223473));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1080),8) == $add.ref($add.ref(rlwe_table,1080),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1080),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1080),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1080),16) == $add.ref($add.ref(rlwe_table,1080),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1080),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1080),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1104) == $add.ref(rlwe_table,1104)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1104),$sub.i64(0,12808847295));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1104),$sub.i64(0,12808847295));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1104),8) == $add.ref($add.ref(rlwe_table,1104),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1104),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1104),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1104),16) == $add.ref($add.ref(rlwe_table,1104),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1104),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1104),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1128) == $add.ref(rlwe_table,1128)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1128),$sub.i64(0,120747434));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1128),$sub.i64(0,120747434));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1128),8) == $add.ref($add.ref(rlwe_table,1128),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1128),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1128),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1128),16) == $add.ref($add.ref(rlwe_table,1128),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1128),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1128),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1152) == $add.ref(rlwe_table,1152)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1152),$sub.i64(0,1031919));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1152),$sub.i64(0,1031919));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1152),8) == $add.ref($add.ref(rlwe_table,1152),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1152),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1152),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1152),16) == $add.ref($add.ref(rlwe_table,1152),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1152),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1152),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1176) == $add.ref(rlwe_table,1176)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1176),$sub.i64(0,7995));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1176),$sub.i64(0,7995));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1176),8) == $add.ref($add.ref(rlwe_table,1176),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1176),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1176),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1176),16) == $add.ref($add.ref(rlwe_table,1176),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1176),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1176),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1200) == $add.ref(rlwe_table,1200)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1200),$sub.i64(0,57));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1200),$sub.i64(0,57));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1200),8) == $add.ref($add.ref(rlwe_table,1200),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1200),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1200),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1200),16) == $add.ref($add.ref(rlwe_table,1200),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1200),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1200),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1224) == $add.ref(rlwe_table,1224)));
  $M.3 := $store.i64($M.3,$add.ref(rlwe_table,1224),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref(rlwe_table,1224),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1224),8) == $add.ref($add.ref(rlwe_table,1224),8)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1224),8),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1224),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1224),16) == $add.ref($add.ref(rlwe_table,1224),16)));
  $M.3 := $store.i64($M.3,$add.ref($add.ref(rlwe_table,1224),16),$sub.i64(0,1));
  $M.3.shadow := $store.i64($M.3.shadow,$add.ref($add.ref(rlwe_table,1224),16),$sub.i64(0,1));
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
procedure {:inline 1} abort();
procedure {:inline 1} cmplt_ct(a: ref, a.shadow: ref, b: ref, b.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i10: i64;
  var $i10.shadow: i64;
  var $i11: i64;
  var $i11.shadow: i64;
  var $i12: i64;
  var $i12.shadow: i64;
  var $i13: i64;
  var $i13.shadow: i64;
  var $i14: i64;
  var $i14.shadow: i64;
  var $i16: i64;
  var $i16.shadow: i64;
  var $i17: i64;
  var $i17.shadow: i64;
  var $i19: i64;
  var $i19.shadow: i64;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i20: i64;
  var $i20.shadow: i64;
  var $i21: i64;
  var $i21.shadow: i64;
  var $i22: i64;
  var $i22.shadow: i64;
  var $i23: i32;
  var $i23.shadow: i32;
  var $i24: i64;
  var $i24.shadow: i64;
  var $i25: i32;
  var $i25.shadow: i32;
  var $i3: i1;
  var $i3.shadow: i1;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i6: i64;
  var $i6.shadow: i64;
  var $i7: i64;
  var $i7.shadow: i64;
  var $i9: i64;
  var $i9.shadow: i64;
  var $p15: ref;
  var $p15.shadow: ref;
  var $p18: ref;
  var $p18.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
$bb0:
  call {:cexpr "a"} boogie_si_record_ref(a);
  call {:cexpr "b"} boogie_si_record_ref(b);
  call {:cexpr "r"} boogie_si_record_i64(0);
  call {:cexpr "m"} boogie_si_record_i64(0);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 115, 7} true;
  $i0 := 0;
  $i0.shadow := 0;
  $i1 := 0;
  $i1.shadow := 0;
  $i2 := 0;
  $i2.shadow := 0;
  goto $bb1;
$bb1:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($i2 == $i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 115, 7} true;
  $i3 := $slt.i32($i2,3);
  $i3.shadow := $slt.i32($i2.shadow,3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 115, 7} true;
  assume {:branchcond $i3} true;
  $shadow_ok := ($shadow_ok && ($i3 == $i3.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i3 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $i4 := $sext.i32.i64($i2);
  $i4.shadow := $sext.i32.i64($i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $p5 := $add.ref(a,$mul.ref($i4,8));
  $p5.shadow := $add.ref(a.shadow,$mul.ref($i4.shadow,8));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $shadow_ok := ($shadow_ok && ($p5 == $p5.shadow));
  $i6 := $load.i64($M.2,$p5);
  $i6.shadow := $load.i64($M.2.shadow,$p5.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $i7 := $sext.i32.i64($i2);
  $i7.shadow := $sext.i32.i64($i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $p8 := $add.ref(b,$mul.ref($i7,8));
  $p8.shadow := $add.ref(b.shadow,$mul.ref($i7.shadow,8));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $shadow_ok := ($shadow_ok && ($p8 == $p8.shadow));
  $i9 := $load.i64($M.3,$p8);
  $i9.shadow := $load.i64($M.3.shadow,$p8.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  call $i10, $i10.shadow := ct_lt_u64($i6, $i6.shadow, $i9, $i9.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $i11 := $xor.i64($i1,$sub.i64(0,1));
  $i11.shadow := $xor.i64($i1.shadow,$sub.i64(0,1));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $i12 := $and.i64($i10,$i11);
  $i12.shadow := $and.i64($i10.shadow,$i11.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 116, 8} true;
  $i13 := $or.i64($i0,$i12);
  $i13.shadow := $or.i64($i0.shadow,$i12.shadow);
  call {:cexpr "r"} boogie_si_record_i64($i13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $i14 := $sext.i32.i64($i2);
  $i14.shadow := $sext.i32.i64($i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $p15 := $add.ref(a,$mul.ref($i14,8));
  $p15.shadow := $add.ref(a.shadow,$mul.ref($i14.shadow,8));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $shadow_ok := ($shadow_ok && ($p15 == $p15.shadow));
  $i16 := $load.i64($M.2,$p15);
  $i16.shadow := $load.i64($M.2.shadow,$p15.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $i17 := $sext.i32.i64($i2);
  $i17.shadow := $sext.i32.i64($i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $p18 := $add.ref(b,$mul.ref($i17,8));
  $p18.shadow := $add.ref(b.shadow,$mul.ref($i17.shadow,8));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  $shadow_ok := ($shadow_ok && ($p18 == $p18.shadow));
  $i19 := $load.i64($M.3,$p18);
  $i19.shadow := $load.i64($M.3.shadow,$p18.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 20} true;
  call $i20, $i20.shadow := ct_ne_u64($i16, $i16.shadow, $i19, $i19.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 8} true;
  call $i21, $i21.shadow := ct_mask_u64($i20, $i20.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 117, 8} true;
  $i22 := $or.i64($i1,$i21);
  $i22.shadow := $or.i64($i1.shadow,$i21.shadow);
  call {:cexpr "m"} boogie_si_record_i64($i22);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 115, 21} true;
  $i23 := $add.i32($i2,1);
  $i23.shadow := $add.i32($i2.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i23);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 115, 21} true;
  $i0 := $i13;
  $i0.shadow := $i13.shadow;
  $i1 := $i22;
  $i1.shadow := $i22.shadow;
  $i2 := $i23;
  $i2.shadow := $i23.shadow;
  goto $bb1;
$bb3:
  assume !($i3 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 119, 2} true;
  $i24 := $and.i64($i0,1);
  $i24.shadow := $and.i64($i0.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 119, 2} true;
  $i25 := $trunc.i64.i32($i24);
  $i25.shadow := $trunc.i64.i32($i24.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 119, 2} true;
  $r := $i25;
  $r.shadow := $i25.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} ct_isnonzero_u64(x: i64, x.shadow: i64) returns ($r: i64, $r.shadow: i64)
modifies $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 33, 2} true;
  $i0 := $sub.i64(0,x);
  $i0.shadow := $sub.i64(0,x.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 33, 2} true;
  $i1 := $or.i64(x,$i0);
  $i1.shadow := $or.i64(x.shadow,$i0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 33, 2} true;
  $i2 := $lshr.i64($i1,63);
  $i2.shadow := $lshr.i64($i1.shadow,63);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 33, 2} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} ct_lt_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
modifies $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i5: i64;
  var $i5.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i0 := $xor.i64(x,y);
  $i0.shadow := $xor.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i1 := $sub.i64(x,y);
  $i1.shadow := $sub.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i2 := $xor.i64($i1,y);
  $i2.shadow := $xor.i64($i1.shadow,y.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i3 := $or.i64($i0,$i2);
  $i3.shadow := $or.i64($i0.shadow,$i2.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i4 := $xor.i64(x,$i3);
  $i4.shadow := $xor.i64(x.shadow,$i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $i5 := $lshr.i64($i4,63);
  $i5.shadow := $lshr.i64($i4.shadow,63);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 59, 2} true;
  $r := $i5;
  $r.shadow := $i5.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} ct_mask_u64(bit: i64, bit.shadow: i64) returns ($r: i64, $r.shadow: i64)
modifies $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
$bb0:
  call {:cexpr "bit"} boogie_si_record_i64(bit);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 93, 23} true;
  call $i0, $i0.shadow := ct_isnonzero_u64(bit, bit.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 93, 23} true;
  $i1 := $sub.i64(0,$i0);
  $i1.shadow := $sub.i64(0,$i0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 93, 23} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} ct_ne_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
modifies $exn;
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 42, 2} true;
  $i0 := $sub.i64(x,y);
  $i0.shadow := $sub.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 42, 2} true;
  $i1 := $sub.i64(y,x);
  $i1.shadow := $sub.i64(y.shadow,x.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 42, 2} true;
  $i2 := $or.i64($i0,$i1);
  $i2.shadow := $or.i64($i0.shadow,$i1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 42, 2} true;
  $i3 := $lshr.i64($i2,63);
  $i3.shadow := $lshr.i64($i2.shadow,63);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 42, 2} true;
  $r := $i3;
  $r.shadow := $i3.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} dbl(in: i32, in.shadow: i32, e: i32, e.shadow: i32) returns ($r: i64, $r.shadow: i64)
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
  var $i4: i64;
  var $i4.shadow: i64;
  var $i5: i64;
  var $i5.shadow: i64;
  var $i6: i64;
  var $i6.shadow: i64;
  var $i7: i64;
  var $i7.shadow: i64;
$bb0:
  call {:cexpr "in"} boogie_si_record_i32(in);
  call {:cexpr "e"} boogie_si_record_i32(e);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 141, 2} true;
  $i0 := $ashr.i32(e,1);
  $i0.shadow := $ashr.i32(e.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 141, 2} true;
  $i1 := $and.i32($i0,1);
  $i1.shadow := $and.i32($i0.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 141, 2} true;
  $i2 := $and.i32(e,1);
  $i2.shadow := $and.i32(e.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 141, 2} true;
  $i3 := $sub.i32($i1,$i2);
  $i3.shadow := $sub.i32($i1.shadow,$i2.shadow);
  call {:cexpr "e"} boogie_si_record_i32($i3);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 142, 2} true;
  $i4 := $zext.i32.i64(in);
  $i4.shadow := $zext.i32.i64(in.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 142, 2} true;
  $i5 := $shl.i64($i4,1);
  $i5.shadow := $shl.i64($i4.shadow,1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 142, 2} true;
  $i6 := $sext.i32.i64($i3);
  $i6.shadow := $sext.i32.i64($i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 142, 2} true;
  $i7 := $sub.i64($i5,$i6);
  $i7.shadow := $sub.i64($i5.shadow,$i6.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 142, 2} true;
  $r := $i7;
  $r.shadow := $i7.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 1} fprintf.ref.ref($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref) returns ($r: i32, $r.shadow: i32);
procedure {:inline 1} llvm.dbg.declare($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref);
procedure {:inline 1} llvm.dbg.value($p0: ref, $p0.shadow: ref, $i1: i64, $i1.shadow: i64, $p2: ref, $p2.shadow: ref);
procedure {:inline 1} llvm.memset.p0i8.i64($p0: ref, $p0.shadow: ref, $i1: i8, $i1.shadow: i8, $i2: i64, $i2.shadow: i64, $i3: i32, $i3.shadow: i32, $i4: i1, $i4.shadow: i1);
procedure {:inline 1} memset($p0: ref, $p0.shadow: ref, $i1: i32, $i1.shadow: i32, $i2: i64, $i2.shadow: i64) returns ($r: ref, $r.shadow: ref);
procedure {:inline 1} public_in($p0: ref, $p0.shadow: ref);
procedure {:inline 1} rlwe_sample_ct.ref.ref(p.0: ref, p.0.shadow: ref, p.1: ref, p.1.shadow: ref) returns ($r: i32, $r.shadow: i32);
procedure {:entrypoint} sample_ct_wrapper(s: ref, s.shadow: ref, rand_ctx: ref, rand_ctx.shadow: ref)
requires {:public_in s} true;
requires {:public_in rand_ctx} true;
modifies $exn;
modifies $CurrAddr, $M.4, $M.3;
requires (s == s.shadow);
requires (rand_ctx == rand_ctx.shadow);
{
  var $i2: i32;
  var $i2.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
$bb0:
  $shadow_ok := true;
  call $initialize();
  call {:cexpr "s"} boogie_si_record_ref(s);
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 5, 13} true;
  call {:name s} $p0, $p0.shadow := __SMACK_value.ref(s, s.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 5, 3} true;
  call public_in($p0, $p0.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 6, 13} true;
  call {:name rand_ctx} $p1, $p1.shadow := __SMACK_value.ref(rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 6, 3} true;
  call public_in($p1, $p1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 8, 3} true;
  call $i2, $i2.shadow := rlwe_sample_ct.ref.ref(s, s.shadow, rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/sample_ct.c", 9, 1} true;
  $exn := false;
  $exn.shadow := false;
  assert $shadow_ok;
  return;
}
procedure {:inline 1} single_sample(in: ref, in.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $exn;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i14: i32;
  var $i14.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i1;
  var $i4.shadow: i1;
  var $i5: i64;
  var $i5.shadow: i64;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i9: i1;
  var $i9.shadow: i1;
  var $p6: ref;
  var $p6.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  call {:cexpr "in"} boogie_si_record_ref(in);
  call {:cexpr "lower_index"} boogie_si_record_i32(0);
  call {:cexpr "this_index"} boogie_si_record_i32(32);
  call {:cexpr "upper_index"} boogie_si_record_i32(64);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 125, 7} true;
  $i0 := 64;
  $i0.shadow := 64;
  $i1 := 32;
  $i1.shadow := 32;
  $i2 := 0;
  $i2.shadow := 0;
  $i3 := 0;
  $i3.shadow := 0;
  goto $bb1;
$bb1:
  assert {:shadow_invariant} $shadow_ok;
  assert {:shadow_invariant} ($i0 == $i0.shadow);
  assert {:shadow_invariant} ($i2 == $i2.shadow);
  assert {:shadow_invariant} ($i1 == $i1.shadow);
  assert {:shadow_invariant} ($i3 == $i3.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 125, 7} true;
  $i4 := $slt.i32($i3,6);
  $i4.shadow := $slt.i32($i3.shadow,6);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 125, 7} true;
  assume {:branchcond $i4} true;
  $shadow_ok := ($shadow_ok && ($i4 == $i4.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 126, 7} true;
  $i5 := $zext.i32.i64($i1);
  $i5.shadow := $zext.i32.i64($i1.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 126, 7} true;
  $p6 := $add.ref(rlwe_table,$mul.ref($i5,24));
  $p6.shadow := $add.ref(rlwe_table,$mul.ref($i5.shadow,24));
  $p7 := $add.ref(rlwe_table,$mul.ref($i5,24));
  $p7.shadow := $add.ref(rlwe_table,$mul.ref($i5.shadow,24));
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 126, 7} true;
  call $i8, $i8.shadow := cmplt_ct(in, in.shadow, $p7, $p7.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 126, 7} true;
  $i9 := $ne.i32($i8,0);
  $i9.shadow := $ne.i32($i8.shadow,0);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 126, 7} true;
  assume {:branchcond $i9} true;
  $shadow_ok := ($shadow_ok && ($i9 == $i9.shadow));
  goto $bb4, $bb5;
$bb3:
  assume !($i4 == 1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 133, 2} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb4:
  assume ($i9 == 1);
  call {:cexpr "upper_index"} boogie_si_record_i32($i1);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 128, 3} true;
  $i10 := $i1;
  $i10.shadow := $i1.shadow;
  $i11 := $i2;
  $i11.shadow := $i2.shadow;
  goto $bb6;
$bb5:
  assume !($i9 == 1);
  call {:cexpr "lower_index"} boogie_si_record_i32($i1);
  $i10 := $i0;
  $i10.shadow := $i0.shadow;
  $i11 := $i1;
  $i11.shadow := $i1.shadow;
  goto $bb6;
$bb6:
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 131, 3} true;
  $i12 := $add.i32($i11,$i10);
  $i12.shadow := $add.i32($i11.shadow,$i10.shadow);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 131, 3} true;
  $i13 := $udiv.i32($i12,2);
  $i13.shadow := $udiv.i32($i12.shadow,2);
  call {:cexpr "this_index"} boogie_si_record_i32($i13);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 125, 21} true;
  $i14 := $add.i32($i3,1);
  $i14.shadow := $add.i32($i3.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i14);
  assume {:sourceloc "/home/vagrant/verifying-constant-time/examples/rlwe/rlwekex/rlwe.c", 125, 21} true;
  $i0 := $i10;
  $i0.shadow := $i10.shadow;
  $i1 := $i13;
  $i1.shadow := $i13.shadow;
  $i2 := $i11;
  $i2.shadow := $i11.shadow;
  $i3 := $i14;
  $i3.shadow := $i14.shadow;
  goto $bb1;
}
axiom (.str1 == $sub.ref(0,16));
axiom (.str2 == $sub.ref(0,30));
axiom (.str3 == $sub.ref(0,44));
axiom (stderr == $sub.ref(0,32776));
axiom (.str990 == $sub.ref(0,75));
axiom (rlwe_memset_volatile == $sub.ref(0,83));
axiom (rlwe_table == $sub.ref(0,1331));
axiom (__VERIFIER_assume == $sub.ref(0,1339));
axiom (llvm.dbg.declare == $sub.ref(0,1347));
axiom (__SMACK_dummy == $sub.ref(0,1355));
axiom (__SMACK_code == $sub.ref(0,1363));
axiom (__VERIFIER_nondet_unsigned_char == $sub.ref(0,1371));
axiom (__VERIFIER_nondet_unsigned_short == $sub.ref(0,1379));
axiom (__VERIFIER_nondet_unsigned_int == $sub.ref(0,1387));
axiom (__VERIFIER_nondet_unsigned_long == $sub.ref(0,1395));
axiom (__VERIFIER_nondet == $sub.ref(0,1403));
axiom (__SMACK_decls == $sub.ref(0,1411));
axiom (__SMACK_top_decl == $sub.ref(0,1419));
axiom (__SMACK_init_func_memory_model == $sub.ref(0,1427));
axiom (RAND_bytes == $sub.ref(0,1435));
axiom (EVP_CIPHER_CTX_init == $sub.ref(0,1443));
axiom (EVP_EncryptInit_ex == $sub.ref(0,1451));
axiom (EVP_aes_256_ctr == $sub.ref(0,1459));
axiom (OPENSSL_cleanse == $sub.ref(0,1467));
axiom (EVP_CIPHER_CTX_cleanup == $sub.ref(0,1475));
axiom (RANDOM64 == $sub.ref(0,1483));
axiom (RANDOM32 == $sub.ref(0,1491));
axiom (llvm.memset.p0i8.i64 == $sub.ref(0,1499));
axiom (EVP_EncryptUpdate == $sub.ref(0,1507));
axiom (fprintf == $sub.ref(0,1515));
axiom (abort == $sub.ref(0,1523));
axiom (RANDOM192 == $sub.ref(0,1531));
axiom (memset == $sub.ref(0,1539));
axiom (FFT_mul == $sub.ref(0,1547));
axiom (FFT_add == $sub.ref(0,1555));
axiom (single_sample == $sub.ref(0,1563));
axiom (dbl == $sub.ref(0,1571));
axiom (cmplt_ct == $sub.ref(0,1579));
axiom (ct_ne_u64 == $sub.ref(0,1587));
axiom (ct_mask_u64 == $sub.ref(0,1595));
axiom (ct_isnonzero_u64 == $sub.ref(0,1603));
axiom (ct_lt_u64 == $sub.ref(0,1611));
axiom (sample_ct_wrapper == $sub.ref(0,1619));
axiom (public_in == $sub.ref(0,1627));
axiom (__SMACK_value == $sub.ref(0,1635));
axiom (rlwe_sample_ct == $sub.ref(0,1643));
axiom (llvm.dbg.value == $sub.ref(0,1651));
axiom (__SMACK_static_init == $sub.ref(0,1659));
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