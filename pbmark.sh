#!/bin/bash

# A really basic menu system for loading personal bookmarks.

# If there is a single parameter then add it as a bookmark, otherwise run the menu.
# Hold shift and enter to force what you type in the bar instead.
touch ~/bookmarks_personal.txt
if (( $# == 1 )); then
    echo $1 >> ~/bookmarks_personal.txt	# Append!
else
	bmark=$(cat ~/bookmarks_personal.txt | dmenu -i -l 40 -p "Address (S-RTN override):")
	x-www-browser $bmark
fi
