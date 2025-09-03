#!/bin/bash
# this is mainly necessary because sometimes pacman/yay/something removes NetworkManager's symlink to resolv.conf and makes it inaccessible etc, it still roughly works, but when something like vpn needs to interact with resolv.conf via NetworkManager it stops working
sudo chattr -i /etc/resolv.conf 2>/dev/null || true
sudo rm -f /etc/resolv.conf
sudo ln -s /var/run/NetworkManager/resolv.conf /etc/resolv.conf
sudo systemctl restart NetworkManager
