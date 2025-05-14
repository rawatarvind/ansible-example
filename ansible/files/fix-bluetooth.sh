#!/bin/bash
rfkill unblock bluetooth
systemctl restart bluetooth
sleep 2
bluetoothctl power on
