sudo mkdir $GOPATH/src
sudo mkdir $GOPATH/src/calculation

sudo mkdir $GOROOT/src/calculation

sudo cp -rf package/calc* $GOPATH/src/calculation/
sudo cp -rf package/calc* $GOROOT/src/calculation/

sudo su
cd $GOPATH/src/calculation/
sudo go install

cd $GOROOT/src/calculation
sudo go install

cd $PATH_GO