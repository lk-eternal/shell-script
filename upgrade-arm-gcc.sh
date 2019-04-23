sudo cp /etc/apt/sources.list /etc/apt/sources.list.wheezy
sudo sed -i 's/wheezy/jessie/g' /etc/apt/sources.list
sudo touch /etc/apt/sources.list.d/crosstools.list
sudo chmod a+w /etc/apt/sources.list.d/crosstools.list
sudo echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list
curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -
sudo dpkg --add-architecture armel
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install virtualbox-guest-dkms virtualbox-guest-x11 linux-headers-$(uname -r)
sudo apt-get install gnome-terminal
sudo apt-get install nautilus
sudo apt-get install gdm3

mkdir ~/pkgs && cd ~/pkgs
wget http://launchpadlibrarian.net/191842424/libisl13_0.14-1_amd64.deb
sudo dpkg -i libisl13_0.14-1_amd64.deb
wget http://launchpadlibrarian.net/200853746/binutils-arm-linux-gnueabi_2.25-5ubuntu3cross1.106_amd64.deb
sudo dpkg -i binutils-arm-linux-gnueabi_2.25-5ubuntu3cross1.106_amd64.deb
wget http://launchpadlibrarian.net/200858128/gcc-4.9-arm-linux-gnueabi-base_4.9.2-10ubuntu10cross0.6_amd64.deb
sudo dpkg -i gcc-4.9-arm-linux-gnueabi-base_4.9.2-10ubuntu10cross0.6_amd64.deb
wget http://launchpadlibrarian.net/202006648/libc6-armel-cross_2.21-0ubuntu4cross1.108_all.deb
sudo dpkg -i libc6-armel-cross_2.21-0ubuntu4cross1.108_all.deb
wget http://launchpadlibrarian.net/200858152/libatomic1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libatomic1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858166/libgomp1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libgomp1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858150/libasan1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libasan1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858155/libgcc1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libgcc1-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858197/libubsan0-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libubsan0-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858154/libgcc-4.9-dev-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libgcc-4.9-dev-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858119/cpp-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb
sudo dpkg -i cpp-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb
wget http://launchpadlibrarian.net/200858129/gcc-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb
sudo dpkg -i gcc-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb
wget http://launchpadlibrarian.net/200858196/libstdc++6-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libstdc++6-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/202006650/libc6-dev-armel-cross_2.21-0ubuntu4cross1.108_all.deb
sudo dpkg -i libc6-dev-armel-cross_2.21-0ubuntu4cross1.108_all.deb
wget http://launchpadlibrarian.net/200858193/libstdc++-4.9-dev-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
sudo dpkg -i libstdc++-4.9-dev-armel-cross_4.9.2-10ubuntu10cross0.6_all.deb
wget http://launchpadlibrarian.net/200858124/g++-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb
sudo dpkg -i g++-4.9-arm-linux-gnueabi_4.9.2-10ubuntu10cross0.6_amd64.deb

sudo apt-get reboot
