#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}" || exit
source "$PWD/utils.sh"

url=$(fzf --tac --bind='Ctrl-y:execute:xclip -r <<< {}; tmux display-message "yanked"' $(get_tmux_option '@fzfurls-fzf-opts' '') < /tmp/tmux-fzfurls)

echo > /tmp/tmux-fzfurls

[[ -n "$url" ]] || exit

"$(get_tmux_option '@fzfurls-cmd' 'xdg-open')" "$url"
