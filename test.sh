#!/bin/bash

# Define colors
RED='\033[0;31m'
RESET='\033[0m'

# Get hostname
HOSTNAME=$(hostname)

# Print "hostname" in block style
echo -e "${RED}"
echo "###############################################"
for (( i=0; i<${#HOSTNAME}; i++ )); do
  CHAR=${HOSTNAME:$i:1}
  case "$CHAR" in
    [aA]) 
      echo "#    ##   ##   ##    #" 
      echo "#   #  #  # #  #  #  #"
      echo "#   ####  # #  ####  #"
      ;;
    🎯%convert#"""
