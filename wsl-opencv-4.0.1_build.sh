sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
wget --no-check-certificate https://github.com/opencv/opencv/archive/4.0.1.tar.gz
tar xzf 4.0.1.tar.gz opencv-4.0.1
cd opencv-4.0.1/
mkdir build
cd build/

cmake -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc-4.9 -DCMAKE_CXX_COMPILER=arm-linux-gnueabihf-g++-4.9 -DCMAKE_INSTALL_PREFIX=/usr/opencv4 -DWITH_PROTOBUF=OFF -DWITH_ADE=OFF -DWITH_CUDA=OFF -DBUILD_TIFF=ON -DBUILD_SHARED_LIBS=OFF -DBUILD_WITH_STATIC_CRT=ON -DCMAKE_BUILD_TYPE=RELEASE -DOPENCV_GENERATE_PKGCONFIG=ON -DWITH_OPENEXR=OFF ../
make -j 4
#cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
