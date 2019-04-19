cd /opt && sudo wget https://github.com/Kitware/CMake/releases/download/v3.5.1/cmake-3.5.1-Linux-x86_64.sh
sudo chmod a+x cmake-3.5.1-Linux-x86_64.sh
sudo bash cmake-3.5.1-Linux-x86_64.sh
sudo ln -s /opt/cmake-3.5.1-Linux-x86_64/bin/* /usr/local/bin

cd ~ && wget https://github.com/opencv/opencv/archive/4.0.1.zip
sudo apt-get install unzip
unzip 4.0.1.zip
cd opencv-4.0.1
mkdir build
cd build

cmake -DCMAKE_C_COMPILER=/usr/bin/arm-linux-gnueabihf-gcc-4.9 -DCMAKE_CXX_COMPILER=/usr/bin/arm-linux-gnueabihf-g++-4.9 ../
make -j 4
