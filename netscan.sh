#!/bin/bash


echo 'This WILL take a while!'

# Network scan for objects with an IP address
echo '-- NETWORK DEVICES SCAN ------------------------------------------'
sudo nmap $(echo $(hostname -I) | cut -d. -f 1-3 | sed 's/$/\.0\/24/g')
echo '------------------------------------------------------------------'
echo ''


# Portscan your router
echo '-- NETWORK ROUTER / GATEWAY --------------------------------------'
sudo nmap -sS -sU -p- $(curl -s http://whatismyip.akamai.com/)
echo '------------------------------------------------------------------'
echo ''


# Portscan your local machine
echo '-- LOCAL MACHINE -------------------------------------------------'
sudo nmap -sS -sU -p- $(hostname -I)
echo '------------------------------------------------------------------'

