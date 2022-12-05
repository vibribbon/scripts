#!/bin/bash

waddress="https://lite.duckduckgo.com/lite/?q="
waddress+=$1

aria2c -D --dir=${HOME}/.cache/wsearch_reader/ -o /wsearch.html --allow-overwrite=true "$waddress";
sleep 1

# Pattern matching to only pull lines with text, then remove html syntax and introduce spacing to make it more readable.
# Final section is to remove style and script code
grep -E '<a |<t|      ' ~/.cache/wsearch_reader/wsearch.html | sed -e 's/<td>/ \
/g' -e 's/<\/span>/\
zzzzzz\
zzzzzz\
/g' -e 's/<title>/    <title>/g' -e 's/^\(.*\)<style \(.*\)<\/style>\(.*\)/\1\3/g' -e 's/^\(.*\)<script>\(.*\)<\/script>\(.*\)/\1\3/g' -e 's/<[^>]*>//g' | tr -s '  ' | grep -E -v '&nbsp|^\s$|Next Page &gt' | sed -e 's/zzzzzz//g'  | fold -w 80 -s | less -s -i



