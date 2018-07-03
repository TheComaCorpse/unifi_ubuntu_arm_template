#install Ubiquiti unifi controller
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee -a /etc/apt/sources.list

#add GPG Keys
sudo apt-key -y adv --keyserver keyserver.ubuntu.com --recv C0A52C50

#Update to latest Package
sudo apt-get -y update 

#Install and upgrade the Unifi Controller and Java SDK 8
sudo apt-get -y install unifi

#Install Java 8 SDK 
#sudo apt-get -y install openjdk-8-jdk --allow-unauthenticated

