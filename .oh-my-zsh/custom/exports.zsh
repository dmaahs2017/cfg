# Path Exports
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:$HOME/Casks"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin" # Ruby path for ruby gem installs

# fpath additions for custom zsh completions
fpath+=$ZSH/custom/completions

# nvm brew caveat
export NVM_DIR="$HOME/.nvm" 
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Other Exports
export FZF_BASE="/usr/local/bin/fzf"
export EDITOR='vim'
export TERM="xterm-256color"
export MD_NOTEBOOKS_DIR="$HOME/dev/md-notebooks"
export ZSH_ALIAS_FINDER_AUTOMATIC=true

# brew
export HOMEBREW_CASK_OPTS='--appdir=~/Casks'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! (with zsh)
export SDKMAN_DIR="$HOME/.sdkman" 
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
