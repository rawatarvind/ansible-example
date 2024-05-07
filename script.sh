#!/bin/bash
hostname
echo "OS:`cat /etc/redhat-release`"
echo "Kernel: `uname -r`"
echo "Uptime: `uptime -p`"
echo "Packages: `dpkg --list | wc -l`"
