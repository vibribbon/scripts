#!/bin/bash

# A really basic launcher!

# If there is a single parameter then add it as a bookmark, otherwise run the menu.
# Hold shift and enter to force what you type in the bar instead.
touch ~/dlaunch.txt

dl=$(cat ~/dlaunch.txt | dmenu -i -l 40 -sb '#495F41' -sf '#00FDDC' -p "Command (S-RTN override):")
echo $dl >> ~/dlaunch.txt
uxterm -fa default -fs 12 -e $dl
