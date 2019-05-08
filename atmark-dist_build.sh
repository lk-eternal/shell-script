cd ~
sudo apt-get update
sudo apt-get install build-essential

wget --no-check-certificate https://users.atmark-techno.com/files/downloads/armadillo-840/source/atmark-dist-20180330.tar.gz
tar xzf atmark-dist-20180330.tar.gz

wget --no-check-certificate https://download.atmark-techno.com/armadillo-840/source/linux-3.4-at16.tar.gz
tar xzf linux-3.4-at16.tar.gz
ln -s ../linux-3.4-at16 atmark-dist-20180330/linux-3.x
cd atmark-dist-20180330

make muneconfig
AtmarkTechno
Armadillo-840
default

sudo apt-get install -y libasound2-dev:armhf
sudo apt-get install -y libexpat-dev:armhf
sudo apt-get install -y libdaemon-dev:armhf
sudo apt-get install -y zlib1g-dev:armhf
sudo apt-get install -y bison
sudo apt-get install -y flex
sudo apt-get install -y glib-2.0
sudo apt-get install -y glib-2.0:armhf

sed -i "s?#include <sys/mman.h>?#include <sys/mman.h>\n#include <sys/resource.h>?" ./user/busybox/busybox-1.20.2/include/libbb.h

#tcl
cd ~ && wget --no-check-certificate https://master.dl.sourceforge.net/project/tcl/Tcl/8.4.12/tcl8.4.12-src.tar.gz
tar xzf tcl8.4.12-src.tar.gz
cd tcl8.4.12/unix/
sed -i "s/relid'/relid/" configure
./configure --prefix=/usr/arm-linux-gnueabihf --disable-shared
make CC=arm-linux-gnueabihf-gcc
sudo make install
sudo ln -s ~/tcl8.4.12/generic/tclInt.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclIntDecls.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclIntPlatDecls.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclPort.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/unix/tclUnixPort.h /usr/arm-linux-gnueabihf/include

cd ~ && wget --no-check-certificate https://download.atmark-techno.com/armadillo/cross-dev/debugger/gdbserver.gz
gunzip gdbserver.gz
sudo mkdir /usr/share/gdb-arm-linux-gnueabihf
sudo cp gdbserver /usr/share/gdb-arm-linux-gnueabihf/

cd ~/atmark-dist-20180330
make all
