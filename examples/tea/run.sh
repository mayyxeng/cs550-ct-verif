
clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS tea.c  -o tea.bc
clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS /home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c  -o smack.bc
llvm-link smack.bc tea.bc -o tea-linked.bc
llvm2bpl tea-linked.bc -bpl teaencrypt.bpl -source-loc-syms -enable-type-inference-opts -entry-points encrypt_wrapper -mem-mod-impls
ruby -I`which bam | sed s/.......$//`/lib `which bam | sed s/.......$//`/bin/bam --shadowing /home/vagrant/verifying-constant-time/examples/tea/teaencrypt.bpl -o /home/vagrant/verifying-constant-time/examples/tea/teaencrypt-instrumented.bpl
/home/vagrant/verifying-constant-time/tools/boogie/Binaries/Boogie.exe /doModSetAnalysis teaencrypt-instrumented.bpl

