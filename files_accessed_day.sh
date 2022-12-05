#!/bin/bash

# Find all recently accessed files within the last day
# format \n is new line between ites, %AF = yyyy-mm-dd, %AR = hh-mm, %p is filename.
find /home -type f -newermt "1 day ago" -printf "\n%AF %AR | %p" 2>/dev/null | less -i
