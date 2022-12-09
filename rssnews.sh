#!/bin/bash


# Download the rss files from their respective websites
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /bbc.xml --allow-overwrite=true https://feeds.bbci.co.uk/news/uk/rss.xml
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /verge.xml --allow-overwrite=true https://www.theverge.com/rss/index.xml
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /gol.xml --allow-overwrite=true https://www.gamingonlinux.com/article_rss.php
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /ns.xml --allow-overwrite=true https://www.newscientist.com/section/news/feed/
aria2c -D --dir=${HOME}/.cache/rss_reader/ -o /polygon.php --allow-overwrite=true https://www.polygon.com/rss/index.xml
sleep 1


touch ${HOME}/rssnews.html
echo 'RSS NEWS - $currentDate <br><hr><br>' > ${HOME}/rssnews.html
echo '<meta name="color-scheme" content="dark light">' >> ${HOME}/rssnews.html
echo '<style> a {color: #f2f2f2;}</style>' >> ${HOME}/rssnews.html


file="/home/vibri/.cache/rss_reader/bbc.xml"
line_count=0

while read -r line; do
	if [[ $line =~ '<title>' ]]; then
		v_title=$(echo "$line" | sed 's/<title>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]><\/title>//g' | sed 's/\]\]>//g')
	elif [[ $line =~ '<link>' ]]; then
		v_link=$(echo "$line" | sed 's/<link>//g' | sed 's/<\/link>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	elif [[ $line =~ '<id>' ]]; then
		v_link=$(echo "$line" | sed 's/<id>//g' | sed 's/<\/id>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	fi

	if [[ $line_count -gt 25 ]]; then
		break
	fi
done <$file

echo "<br><hr><br>" >> ${HOME}/rssnews.html

# ----------------------------------------------------------------------

file="/home/vibri/.cache/rss_reader/polygon.php"
line_count=0

while read -r line; do
	if [[ $line =~ '<title>' ]]; then
		v_title=$(echo "$line" | sed 's/<title>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]><\/title>//g' | sed 's/\]\]>//g')
	elif [[ $line =~ '<link>' ]]; then
		v_link=$(echo "$line" | sed 's/<link>//g' | sed 's/<\/link>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	elif [[ $line =~ '<id>' ]]; then
		v_link=$(echo "$line" | sed 's/<id>//g' | sed 's/<\/id>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	fi

	if [[ $line_count -gt 25 ]]; then
		break
	fi
done <$file

echo "<br><hr><br>" >> ${HOME}/rssnews.html

# ----------------------------------------------------------------------

file="/home/vibri/.cache/rss_reader/verge.xml"
line_count=0

while read -r line; do
	if [[ $line =~ '<title>' ]]; then
		v_title=$(echo "$line" | sed 's/<title>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]><\/title>//g' | sed 's/\]\]>//g')
	elif [[ $line =~ '<link>' ]]; then
		v_link=$(echo "$line" | sed 's/<link>//g' | sed 's/<\/link>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	elif [[ $line =~ '<id>' ]]; then
		v_link=$(echo "$line" | sed 's/<id>//g' | sed 's/<\/id>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	fi

	if [[ $line_count -gt 25 ]]; then
		break
	fi
done <$file

echo "<br><hr><br>" >> ${HOME}/rssnews.html

# ----------------------------------------------------------------------

file="/home/vibri/.cache/rss_reader/ns.xml"
line_count=0

while read -r line; do
	if [[ $line =~ '<title>' ]]; then
		v_title=$(echo "$line" | sed 's/<title>//g' | sed 's/<!\[CDATA\[//g' | sed 's/\]\]><\/title>//g' | sed 's/\]\]>//g')
	elif [[ $line =~ '<link>' ]]; then
		v_link=$(echo "$line" | sed 's/<link>//g' | sed 's/<\/link>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	elif [[ $line =~ '<id>' ]]; then
		v_link=$(echo "$line" | sed 's/<id>//g' | sed 's/<\/id>//g')
		echo "<a href=$v_link>$v_title</a><br>" >> ${HOME}/rssnews.html
		((line_count++))
	fi

	if [[ $line_count -gt 25 ]]; then
		break
	fi
done <$file

echo "<br><hr><br>" >> ${HOME}/rssnews.html

# ----------------------------------------------------------------------

x-www-browser ${HOME}/rssnews.html
