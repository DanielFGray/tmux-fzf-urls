#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}" || exit
source "$PWD/utils.sh"

tmux bind-key "$(get_tmux_option '@fzfurls-key' 'C-u')" run "$PWD/match.sh"
