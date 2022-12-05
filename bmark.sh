#!/bin/bash

# A really basic menu system for loading bookmarks.

# If there is a single parameter then add it as a bookmark, otherwise run the menu.
# Hold shift and enter to force what you type in the bar instead.
touch ~/bookmarks.txt
if (( $# == 1 )); then
    echo $1 >> ~/bookmarks.txt	# Append!
else
	bmark=$(cat ~/bookmarks.txt | dmenu -i -l 40 -p "Address (S-RTN override):")
	x-www-browser $bmark
fi


# Import a whole bookmarks.html file (overwrites)
# grep '<DT><A HREF=' ~/bookmarks.html | cut -d'"' -f2 > ~/files/bookmarks.txt
