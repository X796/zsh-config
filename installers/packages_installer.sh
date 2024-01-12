#!/bin/bash

set -eox pipefail

# required packages
inst_packages='git zsh curl'

# installing packages in various package managers
if [ -x "$(command -v apk)" ];        then
	sudo apk update && sudo apk add --no-cache $inst_packages
elif [ -x "$(command -v apt-get)" ];  then
  	sudo apt-get update && sudo apt-get install -y $inst_packages
elif [ -x "$(command -v yum)" ];      then
  	sudo yum update && sudo yum install -y $inst_packages
elif [ -x "$(command -v dnf)" ];      then
  	sudo dnf update && sudo dnf install -y $inst_packages
elif [ -x "$(command -v zypper)" ];   then
	sudo zypper repos --uri && sudo zypper install -y $inst_packages
elif [ -x "$(command -v pacman)" ];   then
  	sudo pacman -Syu && sudo pacman -S $inst_packages
else
  	echo "error : package manager not found : $inst_packages" >&2
  	exit 1
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[ OK ]  :  installation completed successfully"
