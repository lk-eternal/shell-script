sudo cp /etc/apt/sources.list /etc/apt/sources.list.wheezy
sudo sed -i 's/wheezy/jessie/g' /etc/apt/sources.list
sudo touch /etc/apt/sources.list.d/crosstools.list
sudo chmod a+w /etc/apt/sources.list.d/crosstools.list
sudo echo "deb http://emdebian.org/tools/debian/ jessie main" > /etc/apt/sources.list.d/crosstools.list
curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -
sudo dpkg --add-architecture armhf
sudo apt-get update
sudo apt-get dist-upgrade
