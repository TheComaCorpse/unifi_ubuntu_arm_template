#enable firewall
sudo ufw enable

#enable unifi port 8443 tcp
sudo ufw allow 8443/tcp

#enable unifi port 8080 tcp
sudo ufw allow 8080/tcp

#enable unifi port 8880 tcp
sudo ufw allow 8880/tcp

#enable unifi port 6789 tcp
sudo ufw allow 6789/tcp

#enable unifi port 8843 tcp
sudo ufw allow 8843/tcp

#enable unifi port 3478 udp
sudo ufw allow 3478/udp

#enable unifi port 10001 udp
sudo ufw allow 10001/udp

#enable unifi port 1900 udp
sudo ufw allow 1900 udp

#enable ssh tcp 22
sudo ufw allow ssh

#enable unifi
sudo systemctl start unifi 