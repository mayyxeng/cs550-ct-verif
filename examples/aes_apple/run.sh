
clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS aes.c  -o aes.bc
clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS data.c  -o data.bc
clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS /home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c  -o smack.bc
llvm-link smack.bc aes.bc data.bc -o aes-linked.bc
llvm2bpl aes-linked.bc -bpl aes-linked.bpl -source-loc-syms -enable-type-inference-opts -entry-points harness -mem-mod-impls
ruby -I`which bam | sed s/.......$//`/lib `which bam | sed s/.......$//`/bin/bam --shadowing aes-linked.bpl -o aes-linked-instrumented.bpl
/home/vagrant/verifying-constant-time/tools/boogie/Binaries/Boogie.exe /doModSetAnalysis aes-linked-instrumented.bpl

