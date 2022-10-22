#!/bin/bash


aria2c -D --dir=/home/vibri/scripts -o /resources/bbc.xml --allow-overwrite=true https://feeds.bbci.co.uk/news/uk/rss.xml
aria2c -D --dir=/home/vibri/scripts -o /resources/verge.xml --allow-overwrite=true https://www.theverge.com/rss/index.xml
aria2c -D --dir=/home/vibri/scripts -o /resources/gol.xml --allow-overwrite=true https://www.gamingonlinux.com/article_rss.php
aria2c -D --dir=/home/vibri/scripts -o /resources/ns.xml --allow-overwrite=true https://www.newscientist.com/section/news/feed/
aria2c -D --dir=/home/vibri/scripts -o /resources/polygon.php --allow-overwrite=true https://www.polygon.com/rss/index.xml

truncate -s 0 /home/vibri/scripts/resources/rss_all.txt
echo '-- COMMANDS q(quit) arrow keys(scroll) PGUP/PGDN /(search)  ------' >> /home/vibri/scripts/resources/rss_all.txt
echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
echo '-- BBC NEWS ------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
grep '<lastBuildDate>' /home/vibri/scripts/resources/bbc.xml | sed 's/        <lastBuildDate>//g' | sed 's/<\/lastBuildDate>//g' >> /home/vibri/scripts/resources/rss_all.txt
grep -v 'BBC News - UK' /home/vibri/scripts/resources/bbc.xml | grep "<title>"  | sed 's/            <title><!\[CDATA\[/\|- /g' | sed 's/\]\]><\/title>//g' | head -n 20 >> /home/vibri/scripts/resources/rss_all.txt

echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
echo '-- VERGE ---------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
grep -m 1 '<updated>' /home/vibri/scripts/resources/verge.xml | sed 's/  <updated>//g' | sed 's/<\/updated>//g' >> /home/vibri/scripts/resources/rss_all.txt
grep -v '  <title>The Verge -  All Posts' /home/vibri/scripts/resources/verge.xml | grep "<title>" | sed 's/    <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> /home/vibri/scripts/resources/rss_all.txt

echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
echo '-- NEW SCIENTIST -------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
grep -m 1 '<pubDate>' /home/vibri/scripts/resources/ns.xml | sed 's/            <pubDate>//g' | sed 's/<\/pubDate>//g' >> /home/vibri/scripts/resources/rss_all.txt
grep -v 'New Scientist - News' /home/vibri/scripts/resources/ns.xml | grep "<title>"  | sed 's/            <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> /home/vibri/scripts/resources/rss_all.txt

echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
echo '-- POLYGON GAMING ------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
grep -m 1 '<updated>' /home/vibri/scripts/resources/polygon.php | sed 's/  <updated>//g' | sed 's/<\/updated>//g' >> /home/vibri/scripts/resources/rss_all.txt
grep -v '  <title>Polygon -  All' /home/vibri/scripts/resources/polygon.php | grep "<title>" | sed 's/    <title>/\|- /g' | sed 's/<\/title>//g' | head -n 20 >> /home/vibri/scripts/resources/rss_all.txt

echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
echo '-- GAMING ON LINUX -----------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt
sed -e 's/<description>/\
|- /g' -e 's/<\/description>/\
/g' < /home/vibri/scripts/resources/gol.xml | grep -v '<' | grep -v 'The latest articles from GamingOnLinux' | sed 's/&quot;//g' | head -n 8  >> /home/vibri/scripts/resources/rss_all.txt
echo '------------------------------------------------------------------' >> /home/vibri/scripts/resources/rss_all.txt


fold -s -w80 /home/vibri/scripts/resources/rss_all.txt | less
