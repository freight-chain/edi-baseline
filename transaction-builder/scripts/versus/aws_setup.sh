source common/variables
source common/functions

ROOT_DIR=$AWS_HOME

# install Go
#cd $ROOT_DIR
#sh "$DIR/scripts/versus/install_go.sh"

# install versus
#cd $ROOT_DIR
#sh "$DIR/scripts/versus/install_versus.sh"

# install ethspam
#cd $ROOT_DIR
#sh "$DIR/scripts/versus/install_ethspam.sh"

cd $ROOT_DIR
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
tar -C /usr/local -xvzf go1.14.4.linux-amd64.tar.gz
export  PATH=$PATH:/usr/local/go/bin

cd $ROOT_DIR
git clone https://github.com/INFURA/versus.git
cd versus/
make all

cd $ROOT_DIR
git clone https://github.com/shazow/ethspam.git
cd ethspam/
make all

cd $ROOT_DIR
