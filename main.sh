#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}" || exit

declare urls

urls=$(tmux capturep -p | grep -Po '[a-z]+://[a-zA-Z0-9_%./\[\],~?&=-]+')

if [[ -z "$urls" ]]; then
  tmux display 'no urls found'
  exit 0
fi

tmux splitw -l10 "$PWD/open.sh $(tmux display -pF '#S:#I.#P')"
