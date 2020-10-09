# Path Exports
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:$HOME/Casks"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin" # Ruby path for ruby gem installs

# Other Exports
export FZF_BASE="/usr/local/bin/fzf"
export EDITOR='vim'
export TERM="xterm-256color"
export MD_NOTEBOOKS_DIR="$HOME/dev/md-notebooks"

# brew
export HOMEBREW_CASK_OPTS='--appdir=~/Casks'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! (with zsh)
export SDKMAN_DIR="$HOME/.sdkman" 
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
