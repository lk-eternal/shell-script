sudo apt-get update
sudo apt-get install build-essential

wget --no-check-certificate https://users.atmark-techno.com/files/downloads/armadillo-840/source/atmark-dist-20180330.tar.gz
tar xzf atmark-dist-20180330.tar.gz

wget --no-check-certificate https://download.atmark-techno.com/armadillo-840/source/linux-3.4-at16.tar.gz
tar xzf linux-3.4-at16.tar.gz
ln -s ../linux-3.4-at16 atmark-dist-20180330/linux-3.x
cd atmark-dist-20180330

make config
AtmarkTechno
Armadillo-840
default
None
y
n
n
n
make all
