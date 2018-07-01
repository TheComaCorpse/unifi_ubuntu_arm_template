#install updates
sudo apt-get -y update

#install MongoDB
sudo apt-get install -y MongoDB-org

#install Ubiquiti unifi controller
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt.unifi.list

sudo wget -0 /etc/apt/trusted.gpg.d/unifi-repo-gpg https://dl.ubnt.com/unifi/unifi-repo.gpg

sudo apt-get update --allow-releaseinfo-change

sudo apt-get install unifi