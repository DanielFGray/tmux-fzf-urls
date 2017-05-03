# tmux-fzf-urls

Parses tmux panes for urls and displays them in [fzf][fzf]

[fzf]: https://github.com/junegunn/fzf


### Installation with [Tmux Plugin Manager][tpm] (recommended)
[tpm]: https://github.com/tmux-plugins/tpm

Add plugin to the list of TPM plugins in your `.tmux.conf`:

    set -g @plugin 'DanielFGray/tmux-fzf-urls'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/DanielFGray/tmux-fzf-urls ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/main.sh

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.

### Configuration

Here are the available configuration settings and their defaults:

``` tmux
# define which key to bind to by default
set -g @fzfurls-key 'C-u'

# how many lines the fzf split should take up
set -g @fzfurls-lines '10' 

# what program to open urls with 
set -g @fzfurls-cmd 'xdg-open' 

# any additional settings to pass to fzf
set -g @fzfurls-fzf-opts ''
```
