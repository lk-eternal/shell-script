sudo apt-get update
sudo apt-get -y install curl

echo "deb http://emdebian.org/tools/debian/ jessie main" | sudo tee /etc/apt/sources.list.d/embedian-jessie.list
curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -

sudo dpkg --add-architecture armhf
sudo apt-get update
sudo apt-get install -y crossbuild-essential-armhf 
sudo apt-get update

wget http://emdebian.org/tools/debian/pool/main/c/cross-gcc-4.9-armhf/g++-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb 
wget http://emdebian.org/tools/debian/pool/main/c/cross-gcc-4.9-armhf/gcc-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb 
wget http://emdebian.org/tools/debian/pool/main/c/cross-gcc-4.9-armhf/cpp-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb 
wget http://emdebian.org/tools/debian/pool/main/c/cross-binutils/binutils-arm-linux-gnueabihf_2.25-8_amd64.deb

wget http://ftp.jp.debian.org/debian/pool/main/i/isl/libisl10_0.12.2-2_amd64.deb
sudo dpkg -i libisl10_0.12.2-2_amd64.deb

wget http://ftp.jp.debian.org/debian/pool/main/c/cloog/libcloog-isl4_0.18.2-1+b2_amd64.deb
sudo dpkg -i libcloog-isl4_0.18.2-1+b2_amd64.deb

sudo dpkg -i cpp-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb
sudo dpkg -i binutils-arm-linux-gnueabihf_2.25-8_amd64.deb 

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9-base_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i gcc-4.9-base_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9-base_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i gcc-4.9-base_4.9.2-10+deb8u2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libgomp1_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i libgomp1_4.9.2-10+deb8u2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libgomp1_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libgomp1_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libatomic1_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i libatomic1_4.9.2-10+deb8u2_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libatomic1_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libatomic1_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libstdc++6_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i libstdc++6_4.9.2-10+deb8u2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libstdc++6_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libstdc++6_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libasan1_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i libasan1_4.9.2-10+deb8u2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libasan1_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libasan1_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libubsan0_4.9.2-10+deb8u2_amd64.deb
sudo dpkg -i libubsan0_4.9.2-10+deb8u2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libubsan0_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libubsan0_4.9.2-10+deb8u2_armhf.deb

wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libgcc-4.9-dev_4.9.2-10+deb8u2_armhf.deb
sudo dpkg -i libgcc-4.9-dev_4.9.2-10+deb8u2_armhf.deb

sudo dpkg --force-depends -i gcc-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb
sudo dpkg --force-depends -i g++-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb

#sudo dpkg -i gcc-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb
#sudo dpkg -i g++-4.9-arm-linux-gnueabihf_4.9.2-10_amd64.deb

cd /usr/bin
sudo rm arm-linux-gnueabihf-g++
sudo rm arm-linux-gnueabihf-gcc 
sudo rm arm-linux-gnueabihf-gcov
sudo ln -s arm-linux-gnueabihf-g++-4.9  arm-linux-gnueabihf-g++
sudo ln -s arm-linux-gnueabihf-gcc-4.9 arm-linux-gnueabihf-gcc 
sudo ln -s arm-linux-gnueabihf-gcov-4.9 arm-linux-gnueabihf-gcov
