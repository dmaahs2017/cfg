# Path Exports
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:$HOME/Casks"

# Other Exports
export FZF_BASE="/usr/local/bin/fzf"
export EDITOR='nvim'
export TERM="alacritty"
export MD_NOTEBOOKS_DIR="$HOME/dev/md-notebooks"

# brew
export HOMEBREW_CASK_OPTS='--appdir=~/Casks'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! (with zsh)
export SDKMAN_DIR="$HOME/.sdkman" 
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
