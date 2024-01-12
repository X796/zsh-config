#!/bin/bash

MINPARAMS=2

if [ $# -lt "$MINPARAMS" ];  then
	echo "error : template : ./fonts_installer.sh <font_dir> <font_name_without_ttf>"
	exit 1
fi

font_dir="../fonts/$1"

# is there font?
if [ ! -d "$font_dir" ];  then
	echo "error : font folder does not exist"
  	exit 1
fi

# OS type
if [ "$(uname)" = "Linux" ];  then
  	terminal_font_dir="/usr/share/fonts/"
  	mkdir -p "$terminal_font_dir"
fi

cp "$font_dir/$2.ttf" "$terminal_font_dir/"

if [ command -v fc-cache >/dev/null 2>&1 ];  then
  	fc-cache -f "$terminal_font_dir"
fi

echo "$1 is installed"
