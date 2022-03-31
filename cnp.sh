#!/bin/bash

directory=$HOME/Media/static

if [ -d "$directory" ]; then
	ls $HOME/Media/static/*.png | awk '{print $1}' | tail -1 | xclip -sel c 
	notify-send 'Picture Directory is in Clipboard.'


else
	notify-send 'CNP–Error' --icon="$HOME/.local/share/icons/sadfaceemoji.png"

fi	
