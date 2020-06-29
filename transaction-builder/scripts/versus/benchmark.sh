source common/variables
source common/functions

ROOT_DIR=$AWS_HOME
cd $ROOT_DIR
"$ETHSPAM_ROOT/ethspam" | "$VERSUS_ROOT/versus" --stop-after=1000 --concurrency=5 "http://localhost:8545"
