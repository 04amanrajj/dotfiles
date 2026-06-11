#!/bin/bash

# Check if Steam is running
if pgrep -x "steam" > /dev/null
then
    # If running, close it gracefully
    pkill -15 steam
else
    # If not running, open a terminal and run steam inside it
    # 'gnome-terminal' is the default for Ubuntu
    gnome-terminal -- bash -c "steam; exec bash"
fi
