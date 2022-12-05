#!/bin/bash

# Download the weather file
aria2c -D --dir=${HOME}/.cache/weather_reader/ -o /weather.xml --allow-overwrite=true 'https://weather-broker-cdn.api.bbci.co.uk/en/forecast/rss/3day/2636769'
sleep 1

echo '-------------------------------------------------------------------------'
echo '-- BBC WEATHER ----------------------------------------------------------'
grep -E '^      <title>|^    <pubDate>' ~/.cache/weather_reader/weather.xml | sed -e 's/      <title>/\- /g' -e 's/<\/title>/\
/g' -e 's/    <pubDate>//g' -e 's/<\/pubDate>//g' | fold -s -w 80
echo '-------------------------------------------------------------------------'
