export WD         = ${PWD}
export EXAMPLE    = forloop.c

vector_add:
	@make vector_add-verify

vector_add-%:
	ENTRYPOINTS=vector_add_wrapper SUFFIX=vector_add make -C ../../bin $*

copy_subarray:
	@make copy_subarray-verify

copy_subarray-%:
	ENTRYPOINTS=copy_subarray_wrapper SUFFIX=copy_subarray make -C ../../bin $*