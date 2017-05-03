#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}" || exit
source "$PWD/utils.sh"

urls=$(tmux capturep -Jp | grep -Po '[a-z]+://[a-zA-Z0-9_%./\[\],~?&=-]+')

if [[ -z "$urls" ]]; then
  tmux display 'No urls found.'
  exit 0
fi

tee /tmp/tmux-fzfurls > /dev/null <<< "$urls"
tmux split-window -l "$(get_tmux_option '@fzfurls-lines' '10')" "$PWD/open.sh"
