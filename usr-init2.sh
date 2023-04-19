#!/bin/bash
wget https://cdn.oneautumnsheath.de/bashrc -O /root/.bashrc
chmod -x /etc/update-motd.d/*
apt-get update
apt-get full-upgrade -y
apt-get install neofetch -y
rm /etc/motd
touch /etc/motd
touch /root/.hushlogin
bash -c $'echo "neofetch" >> /etc/profile.d/mymotd.sh && chmod +x /etc/profile.d/mymotd.sh'
