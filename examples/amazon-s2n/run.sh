
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -I/home/vagrant/verifying-constant-time/examples/amazon-s2n/s2n -I/home/vagrant/verifying-constant-time/examples/amazon-s2n/s2n/api -DMEMORY_MODEL_NO_REUSE_IMPLS s2n.c  -o harness.bc
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS /home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c  -o smack.bc
# llvm-link smack.bc harness.bc s2n/lib/libs2n.bc -o linked.bc
# llvm2bpl linked.bc -bpl s2n.bpl -source-loc-syms -enable-type-inference-opts -entry-points s2n_verify_cbc_wrapper -mem-mod-impls
ruby -I`which bam | sed s/.......$//`/lib `which bam | sed s/.......$//`/bin/bam --shadowing s2n.bpl -o s2n-instrumented.bpl
# /home/vagrant/verifying-constant-time/tools/boogie/Binaries/Boogie.exe /doModSetAnalysis s2n-instrumented.bpl

