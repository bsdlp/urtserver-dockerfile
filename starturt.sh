#!/bin/bash

SCRIPTPATH=$( builtin cd $(dirname $0) ; pwd -P )

while true
do
$SCRIPTPATH/Quake3-UrT-Ded.x86_64 +set fs_game q3ut4 +set dedicated 2 +set net_port 27960 +set com_hunkmegs 128
echo "server crashed on `date`" > last_crash.txt
done

