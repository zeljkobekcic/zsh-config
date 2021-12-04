#!/bin/sh

function gi() { 
	curl -L -s https://www.gitignore.io/api/$@ ;
}

function lagrep() { 
    if   [ $# -eq 1 ]; then; ls -a | grep "$1";
    elif [ $# -eq 2 ]; then; ls -a "$1" | grep "$2"
    else ls -a
    fi
}

function mkcd() {
    if [ $# -eq 1 ]; then;
        mkdir -p "$1"
        cd "$1"
    else
        echo "You need to provide one argument" 
    fi
}


function yt-dl-audio() {
    if [ ! -e $1 ]
    then;
        title=$(youtube-dl --get-title $1);
        video_id=$(youtube-dl --get-id $1);
        youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $1 
    else
        echo "Provide an url!"
    fi
}
