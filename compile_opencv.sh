cd /opt && sudo wget https://github.com/Kitware/CMake/releases/download/v3.5.1/cmake-3.5.1-Linux-x86_64.sh
sudo chmod a+x cmake-3.5.1-Linux-x86_64.sh
sudo bash cmake-3.5.1-Linux-x86_64.sh
sudo ln -s /opt/cmake-3.5.1-Linux-x86_64/bin/* /usr/local/bin

cd ~
wget https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/arm-linux-gnueabihf/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz
tar Jxf gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz

wget https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/arm-linux-gnueabihf/sysroot-eglibc-linaro-2017.01-arm-linux-gnueabihf.tar.xz
tar Jxf sysroot-eglibc-linaro-2017.01-arm-linux-gnueabihf.tar.xz

cd ~ && wget https://github.com/opencv/opencv/archive/4.0.1.zip
sudo apt-get install unzip
unzip 4.0.1.zip
#sed -i 's/#define CV__EXCEPTION_PTR/#undef CV__EXCEPTION_PTR\n#define CV__EXCEPTION_PTR/' opencv-4.0.1/modules/core/src/parallel.cpp
cd opencv-4.0.1
mkdir build
cd build

cmake -DCMAKE_C_COMPILER=/home/atmark/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc-4.9.4 -DCMAKE_CXX_COMPILER=/home/atmark/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc-4.9.4 -DCMAKE_SYSROOT=/home/atmark/sysroot-eglibc-linaro-2017.01-arm-linux-gnueabihf -DWITH_PROTOBUF=OFF -DWITH_ADE=OFF -DWITH_CUDA=OFF -DBUILD_TIFF=ON -DCMAKE_INSTALL_PREFIX=/usr/arm-linux-gnueabi/opencv4 -DBUILD_SHARED_LIBS=OFF ../
make -j 4
