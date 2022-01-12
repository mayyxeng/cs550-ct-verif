export WD         = ${PWD}
export EXAMPLE    = rijndael-alg-fst.c harness.c

encrypt:
	@make encrypt-verify

encrypt-%:
	ENTRYPOINTS=rijndaelEncrypt_wrapper SUFFIX=encrypt make -C ../../bin $*
