#!/usr/bin/env bash

urls=$(tmux capturep -p -t "$1" | grep -Po '[a-z]+://[a-zA-Z0-9_%./\[\],~?&=-]+')
url=$(fzf --tac --bind='Ctrl-y:execute:xclip -r <<< {}; tmux display-message "yanked"' <<< "$urls")
xdg-open "$url"
