#install Ubiquiti unifi controller
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee -a /etc/apt/sources.list

#add GPG Keys
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50  
sudo apt-key adv --keyserver keyserver.ubuntu.com -recv A15703C6

#Update to latest Package
sudo apt-get -y --allow-unauthenticated update 


#Install Java 8 SDK 
sudo apt-get -y --allow-unauthenticated install openjdk-8-jdk 

#Install and upgrade the Unifi Controller and Java SDK 8
sudo apt-get -y --allow-unauthenticated install Unifi


