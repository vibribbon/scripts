#!/bin/bash


echo '------------------------------------------------------------------'
echo '-- FILES ---------------------------------------------------------'
find /home -type f -user root  | fold -s -w 80 
echo '-- FOLDERS -------------------------------------------------------'
find /home -type d -user root  | fold -s -w 80 
echo '------------------------------------------------------------------'
