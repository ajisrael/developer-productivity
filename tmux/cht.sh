#!/usr/bin/env bash

# Utilizes cht.sh tool found here: https://github.com/chubin/cheat.sh

languages=$(echo "golang c cpp typescript rust python" | tr " " "\n")
core_utils=$(echo "java find xargs sed awk tmux" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "GIMME YOUR QURERY: " query

if echo "$languages" | grep -qs $selected; then
	tmux split-window -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
	tmux split-window -h bash -c "curl cht.sh/$selected~$query | less"
fi
