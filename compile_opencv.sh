cd ~ && wget https://github.com/Kitware/CMake/releases/download/v3.5.1/cmake-3.5.1-Linux-x86_64.sh
chmod a+x cmake-3.5.1-Linux-x86_64.sh
sudo bash cmake-3.5.1-Linux-x86_64.sh
sudo ln -s /opt/cmake-3.5.1-Linux-x86_64/bin/* /usr/local/bin

cd ~ && wget https://github.com/opencv/opencv/archive/4.0.1.zip
sudo apt-get install unzip
unzip 4.0.1.zip
cd opencv-4.0.1
mkdir build
cd build

cmake -DCMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake ../
make -j 4
