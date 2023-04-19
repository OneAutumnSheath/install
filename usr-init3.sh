#!/bin/bash

if [ ! -f "/etc/.completed_setup" ]; then
    wget https://cdn.oneautumnsheath.de/bashrc -O /root/.bashrc
    chmod -x /etc/update-motd.d/*
    apt-get update
    apt-get full-upgrade -y
    apt-get install neofetch -y
    rm /etc/motd
    touch /etc/motd
    touch /root/.hushlogin
    bash -c $'if [ ! -f "/etc/profile.d/mymotd.sh" ]; then echo "neofetch" > /etc/profile.d/mymotd.sh; fi && chmod +x /etc/profile.d/mymotd.sh'
    touch /etc/.completed_setup
fi
