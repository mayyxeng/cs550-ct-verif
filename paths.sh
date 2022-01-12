
export VCTPATH=/home/vagrant/verifying-constant-time

export Z3PATH=${VCTPATH}/tools/z3
export SMACKPATH=${VCTPATH}/tools/smack
export BAMPATH=${VCTPATH}/tools/bam-bam-boogieman
export BOOGIEPATH=${VCTPATH}/tools/boogie
export CORRALPATH=${VCTPATH}/tools/corral

export PATH=${PATH}:${BAMPATH}/bin:${SMACKPATH}/bin
export PATH=${PATH}:${SMACKPATH}/build:${CORRALPATH}/bin