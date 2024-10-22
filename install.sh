#!/bin/bash

cp -f bgutc /usr/bin/bgutc
chmod +x /usr/bin/bgutc


# Check if the config folder exists
if ! [ -f /home/$(logname)/.config/bgutc ] ; then
    mkdir -p /home/$(logname)/.config/bgutc/
    chmod a+w+r /home/$(logname)/.config/bgutc/
fi



# Check if the config file exists
if ! [ -f /home/$(logname)/.config/bgutc/bgutc.conf ] ; then
    cp -f bgutc.conf /home/$(logname)/.config/bgutc/bgutc.conf
    chmod a+w+r /home/$(logname)/.config/bgutc/bgutc.conf
fi

if ! [ -f "/home/$(logname)/.config/bgutc/PLACE YOUR THEMES HERE" ] ; then
    touch  -f "/home/$(logname)/.config/bgutc/PLACE YOUR THEMES HERE"
fi


cp -f bgutc.desktop /home/$(logname)/.local/share/applications/bgutc.desktop
