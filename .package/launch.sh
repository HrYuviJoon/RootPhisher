#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export RootPhisher_ROOT="/data/data/com.termux/files/usr/opt/RootPhisher"
else
	export RootPhisher_ROOT="/usr/opt/RootPhisher"
fi

cd $RootPhisher_ROOT
bash ./RootPhisher.sh