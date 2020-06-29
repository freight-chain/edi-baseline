source common/variables
source common/functions

wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
tar -C /usr/local -xvzf go1.14.4.linux-amd64.tar.gz
export  PATH=$PATH:/usr/local/go/bin
