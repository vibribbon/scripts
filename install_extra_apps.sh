#!/bin/bash

# USEFUL SOFTWARE INSTALLERS

# ----------------------------------------------------------------------
# -- TODO --

# ----------------------------------------------------------------------


# INDIVIDUAL USE CASES

# ----------------------------------------------------------------------
# -- MUSIC / AUDIO --
# -Playing
# apt-get install -y rhythmbox
# apt-get install -y clementine
# apt-get install -y deadbeef	# required deb download
# apt-get install -y moc	# Terminal music player

# -Editing
# apt-get install -y audacity
# apt-get install -y lmms

# -Volume Control
# apt-get install -y pulseaudio pavucontrol # sound settings and volume control
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- VIDEO / ANIMATION --
# -Players
# apt-get install -y vlc
# apt-get install -y youtube-dl
# apt-get install -y mpv

# -Editors
# apt-get install -y OpenShot
# apt-get install -y kdenlive
# Lightworks requires signup and manual install

# -Encoders
# apt-get install -y handbrake
# apt-get install -y flac

# -Recorders
# apt-get install -y obs-studio

# -Superlight
# apt-get install -y mplayer
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- PHOTOS / GRAPHICS / CAD --
# -Editing
# apt-get install -y gimp
# apt-get install -y krita
# apt-get install -y inkscape
# apt-get install -y libreoffice-draw

# -Organising / Mastering
# apt-get install -y darktable
# apt-get install -y nomacs
# apt-get install -y digikam
# apt-get install -y rawtherapee

# -Rendering
# apt-get install -y blender

# -Viewer
# apt-get install -y feh
# apt-get install -y mirage
# apt-get install -y gpicview
# apt-get install -y sxiv	# superlight viewer
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- INTERNET --
# -Browser
# apt-get install -y firefox-esr
# apt-get install -y chromium
# apt-get install -y surf
# apt-get install -y w3m # terminal web browser

# -Download Manager
# apt-get install -y aria2	# cli bt support
# apt-get install -y curl	# cli
# apt-get install -y wget	# cli no bt support but lightweight
# apt-get install -y transmission

# -FTP
# apt-get install -y filezilla

# -Email Client
# apt-get install -y thunderbird

# -Other
# apt-get install -y network-manager	# network icon in taskbar
# apt-get install -y ssh
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- OFFICE & WORKFLOW --
# -Writing
# apt-get install -y libreoffice-writer
# apt-get install -y abiword
# apt-get install -y lyx	# latex processor with strong formula support
# apt-get install -y texmaker	# latex processor with strong formula support

# -Spreadsheet / Stats
# apt-get install -y libreoffice-calc
# apt-get install -y r-base
# flatpak install rstudio

# -Presentation
# apt-get install -y libreoffice-impress

# -Database
# apt-get install -y libreoffice-base	# MS Access clone

# -Desk Top Publishing
# apt-get install -y scribus	# DTP package

# -Tools
# apt-get install -y galculator
# apt-get install -y libreoffice-math
# apt-get install -y bc	# terminal calculator
# apt-get install -y aspell	# SPell checker (usually already installed)

# -Readers
# apt-get install -y mupdf	# simple pdf reader
# apt-get install -y calibre	# Ebook suite
# apt-get install -y fcitx
# apt-get install -y ghostscript
# libreoffice-draw also has limited pdf editing support

# -Calendar
# apt-get install -y ncal # basic calendar

# -Converters
# apt-get install -y pandoc

# -Other
# apt-get install -y cups	# Full print server inc drivers
# apt-get install -y orca	# a screenreader
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- DEVELOPMENT --
# -Clients
# apt-get install -y nano	# Terminal superlight
# apt-get install -y vim	# Terminal
# apt-get install -y geany	# Convenient graphical IDE
# apt-get install -y notepadqq	# Notepad++ port
# flatpak install flathub com.vscodium.codium	# vscode clone
# apt-get install -y gedit
# apt-get install -y micro	# Terminal

# -Tools
# apt-get install -y icdiff	# a file diff (compare) tool

# -Environments
# apt-get install -y python3 python3-pip # install python
# apt-get install -y build-essential ccache # install c/c++ compiler
# apt-get install -y mariadb-server	# Dropin replacement for mysql
# apt-get install -y mysql
#  sudo mysql_secure_installation # config for mariadb
# apt-get install -y apache2 #www server
# apt-get install -y php libapache2-mod-php pch-cli php-mysql php-zip php-curl php-xml #php and addons
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- GAMING --
# -Clients
# dpkg --add-architecture i386	# Run before installing steam to allow 32bit architecture.
# apt-get install -y steam
# flatpak install net.lutris.Lutris	# multi client manager + wine, Flatpak builds are newer
# apt-get install -y lutris	# Alternative installer if not using flatpak
# apt-get install -y playonlinux	# Older wine client

# -Tools
# flatpak install net.davidotek.pupgui2	# Manage glorious eggroll installs
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- SYSTEM --
# -File manager
# apt-get install -y pcmanfm
# apt-get install -y thunar
# apt-get install -y gvfs-fuse gvfs-backends	# Network interface if using thunar
# apt-get install -y xfe
# apt-get install -y mc	# Terminal file manager
# apt-get install -y ranger # cli file manager
# apt-get install -y tree # folder tree mapping

# -Compression
# apt-get install -y p7zip-full p7zip-rar
# apt-get install -y xarchiver	# Gui for 7zip / etc
# flatpak install peazip	# Gui client

# -Backup
# apt-get install -y rsync
# apt-get install -y luckybackup
# apt-get install -y timeshift

# -Recovery
# apt-get install -y extundelete

# -Cleaning
# apt-get install -y bleachbit	# system cleaning tool
# apt-get install -y ncdu	# folder / file size terminal tool
# apt-get install -y nwipe	# file wiper
# apt-get install -y baobab	# gui file / folder size tool

# -Partition Manager
# apt-get install -y gnome-disk-utility
# apt-get install -y gparted

# -Package Managers
# apt-get install -y flatpak	# Uses more up-to-date container based installs
# apt-get install -y synaptic	# old school gui package management interface

# -Terminals
#apt-get install -y xfce4-terminal
#apt-get install -y terminator
#apt-get install -y rvxt-unicode
#apt-get install -y st

# -Other
# apt-get install -y samba cifs-utils	# Setup file sharing server
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- MONITORING --
# -System Monitors
# apt-get install -y htop # system performance
# apt-get install -y conky # system monitor
# apt-get install -y stacer # system monitor
# apt-get install -y cpu-x # CPU informaiton like cpu-z

# -Network Monitors
# apt-get install -y nmon
# apt-get install -y traceroute
# apt-get install -y nmap	# Port scanner and network ID tool
# apt-get install -y iftop # internet monitor
# apt-get install -y nethogs # list apps using the most bandwidth

# -Hardware
# apt-get install -y xsensors # system temperature monitoring
# apt-get install -y powertop # system energy usage
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- SECURITY --
# -Network Security
#apt-get install -y ufw	gufw	# Firewall and gui (GUFW)
#apt-get install -y snort	# network packet tracker / blocker

# -Antivirus
#apt-get install -y clamav clamtk
#apt-get install -y chkrootkit

# -Screen Locker
# apt-get install -y slock # simple screen locker
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- GUI DESKTOP ADDONS --
# -Taskbar
# apt-get install -y tint2
# apt-get install -y xfce-panel
# apt-get install -y plank

# -Clipboard Manager
# apt-get install -y parcellite

# -Wallpaper Manager
# apt-get install -y nitrogen # wallpaper manager if you dont like feh

# -Screen Resolution
# apt-get install -y arandr

# -System Search
# apt-get install -y catfish

# -Media Mounting
# apt-get install -y ivman
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- GUIS --
# -Openbox (window manager only)
# apt-get install -y sudo xorg openbox obconf

# -XFCE (conventional lightweight)
# apt-get install -y sudo xorg xfce gvfs gvfs-bin gvfs-backends

# -I3 (Tile window manager)
# apt-get install -y sudo xorg i3 i3lock dmenu i3status
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- NON APT SOFTWARE --
# lightworks (video editor)
# rstudio (client for r-base) - https://www.rstudio.com/products/rstudio/download/#download
# spotify - https://www.spotify.com/us/download/linux/
# heidisql (client for mariadb)
# makemkv (dlu-ray extractor) - build from source
# atraci (youtube music player)
# xnview mp (image organiser) - https://www.xnview.com/en/xnviewmp/#downloads
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# -- OTHER SPECIFIC CASES --
# MYSqL setup
#sudo mysql_secure_installation
#sudo nano /etc/apache2/mods-enabled/dir.conf  move index.php to first position in the list

# xfat setup
#apt-get install -y exfat-fuse exfat-utils
# -----------------------------------------------------------------------

