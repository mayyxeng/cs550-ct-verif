
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS harness.c  -o harness.bc
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS rijndael-alg-fst.c  -o rijndael-alg-fst.bc
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS /home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c  -o smack.bc
# llvm-link smack.bc rijndael-alg-fst.bc  harness.bc -o linked.bc
llvm2bpl linked.bc -bpl rijndaelEncrypt_wrapper.bpl -source-loc-syms -enable-type-inference-opts -entry-points rijndaelEncrypt_wrapper -mem-mod-impls
# ruby -I`which bam | sed s/.......$//`/lib `which bam | sed s/.......$//`/bin/bam --shadowing rijndaelEncrypt_wrapper.bpl -o rijndaelEncrypt_wrapper-instrumented.bpl
/home/vagrant/verifying-constant-time/tools/boogie/Binaries/Boogie.exe /doModSetAnalysis rijndaelEncrypt_wrapper-instrumented.bpl

