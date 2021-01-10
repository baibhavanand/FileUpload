#!/usr/bin/env bash


if [ "$(id -u)" != "0" ]; then
    echo "Run it as root"

else	
		if [ "$1" = "--install" ] ; then
				if [ "$(uname)" == "Darwin" ]; then
				brew install jq
				else
				apt install jq
				fi	
			chmod 777 fu
			cp fu /usr/local/bin
			echo "Installation Successful"

		elif [ "$1" = "--uninstall" ] ; then
			rm -f /usr/local/bin/fu
			echo "Uninstallation Successful"
		else
			echo "usage: sudo bash install.sh --install | --uninstall"
		fi			
fi
