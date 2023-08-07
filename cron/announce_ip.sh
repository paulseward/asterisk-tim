#!/bin/bash
#
# Utility script to speak the current IP address, useful in headless environments
# where it can be run via cron on reboot:
#
# @reboot ./announce_ip.sh
#
# Needs the following packages:
# apt install espeak jq

espeak "$(ip -j ro get 1 | jq .[0].prefsrc)"
