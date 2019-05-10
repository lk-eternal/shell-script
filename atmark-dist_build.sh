wget https://download.atmark-techno.com/armadillo-840/source/atmark-dist-20180330.tar.gz
wget https://download.atmark-techno.com/armadillo-840/source/linux-3.4-at26.tar.gz
wget https://download.atmark-techno.com/armadillo-840/source/hermit-at-3.11.0-source.tar.gz

tar zxf atmark-dist-20180330.tar.gz
tar zxf linux-3.4-at26.tar.gz

ln -s ../linux-3.4-at26 atmark-dist-20180330/linux-3.x
cd atmark-dist-20180330/

make menuconfig

sudo apt-get update
sudo apt-get install -y libasound2-dev:armhf
sudo apt-get install -y libexpat1-dev:armhf
sudo apt-get install -y libdaemon-dev:armhf

#busybox
sudo sed -i "/#include <sys\/mman.h>/a\#include <sys\/resource.h>" ./user/busybox/busybox-1.20.2/include/libbb.h

#tcl
cd ~ && wget --no-check-certificate https://master.dl.sourceforge.net/project/tcl/Tcl/8.4.12/tcl8.4.12-src.tar.gz
tar xzf tcl8.4.12-src.tar.gz
cd tcl8.4.12/unix/
sudo sed -i "s/relid'/relid/g" configure
./configure --prefix=/usr/arm-linux-gnueabihf --disable-shared
make CC=arm-linux-gnueabihf-gcc
sudo make install
sudo ln -s ~/tcl8.4.12/generic/tclInt.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclIntDecls.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclIntPlatDecls.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/generic/tclPort.h /usr/arm-linux-gnueabihf/include
sudo ln -s ~/tcl8.4.12/unix/tclUnixPort.h /usr/arm-linux-gnueabihf/include

#gdbserver
cd ~ && wget --no-check-certificate https://download.atmark-techno.com/armadillo/cross-dev/debugger/gdbserver.gz
gunzip gdbserver.gz
sudo mkdir /usr/share/gdb-arm-linux-gnueabihf
sudo cp gdbserver /usr/share/gdb-arm-linux-gnueabihf/

#gstreamer
sudo apt-get install -y bison
sudo apt-get install -y flex
sudo apt-get install -y libglib2.0-dev:armhf 
export PKG_CONFIG_PATH=/usr/lib/arm-linux-gnueabihf/pkgconfig/

sudo sed -i "/^int priv_gst_parse_yylex /s/ , yyscan_t yyscanner//" ~/atmark-dist-20180330/user/gstreamer/gstreamer1.0/gstreamer1.0-1.0.8/gst/parse/grammar.y

sudo sed -i "/^\techo 'static/d" ~/atmark-dist-20180330/user/gstreamer/gstreamer1.0/gstreamer1.0-1.0.8/gst/parse/Makefile.am

sudo apt-get install -y libjpeg-dev:armhf
sudo apt-get install -y liblzo2-dev:armhf
sudo apt-get install -y libssl-dev:armhf

sudo rm /usr/bin/qmake
sudo apt-get install -y qt5-qmake:armhf
sudo apt-get install -y qt5-default:armhf
sudo apt-get install -y qtbase5-private-dev:armhf
sudo ln -s /usr/lib/arm-linux-gnueabihf/qt5/bin/qmake /usr/bin/qmake 
sudo apt-get install -y qtdeclarative5-dev:armhf
sudo cp -r /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-arm-gnueabi-g++ /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-arm-gnueabihf-g++
sudo sed -i "s/gnueabi/gnueabihf/" /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-arm-gnueabihf-g++/qmake.conf

sudo sed -i "/#include <sys\/types.h>/a\#include <sys\/resource.h>" ~/atmark-dist-20180330/user/udev/udev-105/udev-105/udevd.c

sudo apt-get install -y gstreamer1.0-alsa:armhf
sudo apt-get install -y gstreamer1.0-libav:armhf
sudo apt-get install -y gstreamer1.0-plugins-good:armhf

sudo apt-get install -y qml-module-qtquick2:armhf
sudo apt-get install -y qml-module-qttest:armhf
sudo apt-get install -y qml-module-qtquick-window2:armhf
sudo apt-get install -y qml-module-qtmultimedia:armhf

sudo apt-get install -y genext2fs
sudo sed -i 's/$OPTINODES //' ~/atmark-dist-20180330/vendors/AtmarkTechno/Common/tools/genfs_ext2.sh

cd ~/atmark-dist-20180330
make
