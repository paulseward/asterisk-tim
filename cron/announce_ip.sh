#!/bin/bash
#
# Utility script to speak the current IP address, useful in headless environments
# where it can be run via cron on reboot:
#
# @reboot ./announce_ip.sh
#
# Needs the following packages:
# apt install espeak jq

IP=$(ip addr sho | grep "inet " | sed 's/\// /' | awk '!/127.0.0.1/ {print $2}')
echo "announcing IP: ${IP}"
espeak -s 100 ${IP}
sleep 1

IP=$(ip addr sho | grep "inet " | sed 's/\// /' | awk '!/127.0.0.1/ {print $2}')
echo "announcing IP: ${IP}"
espeak -s 100 ${IP}
sleep 1

IP=$(ip addr sho | grep "inet " | sed 's/\// /' | awk '!/127.0.0.1/ {print $2}')
echo "announcing IP: ${IP}"
espeak -s 100 ${IP}
