#!/bin/sh

# backup the insurgency sandstorm server

# Create a file structure
mkdir ~/downloads/bak_inssserver
mkdir ~/downloads/bak_inssserver/serverfiles
mkdir ~/downloads/bak_inssserver/serverfiles/Insurgency
mkdir ~/downloads/bak_inssserver/serverfiles/Insurgency/Config
mkdir ~/downloads/bak_inssserver/serverfiles/Insurgency/Saved
mkdir ~/downloads/bak_inssserver/lgsm

rsync -avP --delete -e ssh inssserver@192.168.1.21:/home/inssserver/serverfiles/Insurgency/Config/ ~/downloads/bak_inssserver/serverfiles/Insurgency/Config/
rsync -avP --delete -e ssh inssserver@192.168.1.21:/home/inssserver/serverfiles/Insurgency/Saved/ ~/downloads/bak_inssserver/serverfiles/Insurgency/Saved/
rsync -avP --delete -e ssh inssserver@192.168.1.21:/home/inssserver/lgsm/ ~/downloads/bak_inssserver/lgsm

7z a ~/downloads/bak_inssserver.7z ~/downloads/bak_inssserver/* -mx=9

rm -r ~/downloads/bak_inssserver
