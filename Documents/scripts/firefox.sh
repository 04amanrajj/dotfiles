#!/bin/bash

# Check if firefox is running
if pgrep -x "firefox" > /dev/null
then
    # If running, close it gracefully
    pkill -15 firefox
else
    # If not running, open a terminal and run firefox inside it
    # 'gnome-terminal' is the default for Ubuntu
    gnome-terminal -- bash -c "firefox; exec bash"
fi
