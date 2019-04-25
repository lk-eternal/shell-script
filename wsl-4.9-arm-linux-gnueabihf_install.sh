cd ~
sudo touch /etc/apt/sources.list.d/crosstools.list
sudo chmod a+w /etc/apt/sources.list.d/crosstools.list
sudo echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list

curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -
sudo dpkg --add-architecture armhf
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install gcc-4.9-arm-linux-gnueabihf
sudo reboot
