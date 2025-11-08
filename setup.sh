#!/bin/bash

echo "==============================="
echo " STARTING XAMPP AUTO SETUP "
echo "==============================="

# 1. Download dan install XAMPP versi 7.4.33
echo "[1/4] Downloading XAMPP..."
cd /opt
sudo wget -q https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.4.33/xampp-linux-x64-7.4.33-0-installer.run

echo "[2/4] Installing XAMPP..."
sudo chmod +x xampp-linux-x64-7.4.33-0-installer.run
sudo ./xampp-linux-x64-7.4.33-0-installer.run

# 2. Update konfigurasi agar bisa diakses dari IP publik
echo "[3/4] Updating Apache config..."
sudo sed -i 's/Require local/Require all granted/g' /opt/lampp/etc/extra/httpd-xampp.conf

# 3. Restart XAMPP
echo "[4/4] Restarting XAMPP service..."
sudo /opt/lampp/lampp restart

# 4. Clone project ke htdocs
cd /opt/lampp/htdocs/
echo "Cloning project..."
sudo git clone https://github.com/frilix999/ukk-pabhara-pos.git

echo "====================================="
echo " ✅ DONE — XAMPP + PROJECT INSTALLED "
echo "====================================="
