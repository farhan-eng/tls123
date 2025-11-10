#!/bin/bash
cd /opt && \
sudo wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.4.33/xampp-linux-x64-7.4.33-0-installer.run && \
ls && \
sudo chmod +x xampp-linux-x64-7.4.33-0-installer.run && \
sudo ./xampp-linux-x64-7.4.33-0-installer.run && \
sudo sed -i 's/Require local/Require all granted/g' /opt/lampp/etc/extra/httpd-xampp.conf && \
cd /opt/lampp/htdocs && \
sudo git clone https://github.com/frilix999/ukk-pabhara-pos.git && \
sudo /opt/lampp/lampp restart
