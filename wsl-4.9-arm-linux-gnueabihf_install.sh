cd ~
    
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/lk-eternal/shell-script/master/sources.list
sudo cp -f sources.list /etc/apt/sources.list

sudo touch /etc/apt/sources.list.d/crosstools.list
sudo chmod a+w /etc/apt/sources.list.d/crosstools.list
sudo echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list

sudo apt-get -y install curl
curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -
sudo dpkg --add-architecture armhf
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install gcc-4.9-arm-linux-gnueabihf
sudo reboot
