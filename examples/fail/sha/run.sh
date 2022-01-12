
# clang -c -emit-llvm -O0 -g -gcolumn-info -I../openssl/build/include -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -lphtread -DMEMORY_MODEL_NO_REUSE_IMPLS sha.c  -o sha.bc
# clang -c -emit-llvm -O0 -g -gcolumn-info -I/home/vagrant/verifying-constant-time/tools/smack/share/smack/include -DMEMORY_MODEL_NO_REUSE_IMPLS /home/vagrant/verifying-constant-time/tools/smack/share/smack/lib/smack.c  -o smack.bc
# llvm-link smack.bc sha.bc ../openssl/build/crypto/libcrypto.bc -o sha-linked.bc
llvm2bpl sha-linked.bc -bpl sha-linked.bpl -source-loc-syms -enable-type-inference-opts -entry-points SHA256_digest_wrapper -mem-mod-impls
# ruby -I`which bam | sed s/.......$//`/lib `which bam | sed s/.......$//`/bin/bam --shadowing sha-linked.bpl -o sha-instrumented.bpl
# /home/vagrant/verifying-constant-time/tools/boogie/Binaries/Boogie.exe /doModSetAnalysis sha-instrumented.bpl

