#!/bin/bash

# Download the rss files from their respective websites
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /bbc.xml --allow-overwrite=true https://feeds.bbci.co.uk/news/uk/rss.xml
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /verge.xml --allow-overwrite=true https://www.theverge.com/rss/index.xml
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /gol.xml --allow-overwrite=true https://www.gamingonlinux.com/article_rss.php
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /ns.xml --allow-overwrite=true https://www.newscientist.com/section/news/feed/
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /polygon.php --allow-overwrite=true https://www.polygon.com/rss/index.xml
sleep 1

# Combine the rss files together using uniform format
truncate -s 0 ~/.cache/rss_reader/rss_all.txt
echo '-- COMMANDS q(quit) arrow keys(scroll) PGUP/PGDN /(search)  ------' >> ~/.cache/rss_reader/rss_all.txt
echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
echo '-- BBC NEWS ------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
grep '<lastBuildDate>' ~/.cache/rss_reader/bbc.xml | sed 's/        <lastBuildDate>//g' | sed 's/<\/lastBuildDate>//g' >> ~/.cache/rss_reader/rss_all.txt
grep -v 'BBC News - UK' ~/.cache/rss_reader/bbc.xml | grep "<title>"  | sed 's/            <title><!\[CDATA\[/\|- /g' | sed 's/\]\]><\/title>//g' | head -n 20 >> ~/.cache/rss_reader/rss_all.txt

echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
echo '-- VERGE ---------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
grep -m 1 '<updated>' ~/.cache/rss_reader/verge.xml | sed 's/  <updated>//g' | sed 's/<\/updated>//g' >> ~/.cache/rss_reader/rss_all.txt
grep -v '  <title>The Verge -  All Posts' ~/.cache/rss_reader/verge.xml | grep "<title>" | sed 's/    <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> ~/.cache/rss_reader/rss_all.txt

echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
echo '-- NEW SCIENTIST -------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
grep -m 1 '<pubDate>' ~/.cache/rss_reader/ns.xml | sed 's/            <pubDate>//g' | sed 's/<\/pubDate>//g' >> ~/.cache/rss_reader/rss_all.txt
grep -v 'New Scientist - News' ~/.cache/rss_reader/ns.xml | grep "<title>"  | sed 's/            <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> ~/.cache/rss_reader/rss_all.txt

echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
echo '-- POLYGON GAMING ------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
grep -m 1 '<updated>' ~/.cache/rss_reader/polygon.php | sed 's/  <updated>//g' | sed 's/<\/updated>//g' >> ~/.cache/rss_reader/rss_all.txt
grep -v '  <title>Polygon -  All' ~/.cache/rss_reader/polygon.php | grep "<title>" | sed 's/    <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> ~/.cache/rss_reader/rss_all.txt

echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
echo '-- GAMING ON LINUX -----------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt
sed -e 's/<description>/\
|- /g' -e 's/<\/description>/\
/g' < ~/.cache/rss_reader/gol.xml | grep -v '<' | grep -v 'The latest articles from GamingOnLinux' | sed 's/&quot;//g' | head -n 8  >> ~/.cache/rss_reader/rss_all.txt
echo '------------------------------------------------------------------' >> ~/.cache/rss_reader/rss_all.txt

# Present the output back using less
fold -s -w80 ~/.cache/rss_reader/rss_all.txt | less
