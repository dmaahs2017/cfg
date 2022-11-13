# Path Exports
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:$HOME/Casks"
export PATH="$PATH:/opt/cuda/bin"

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

# Enable conda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# CUDA
export LD_LIBRARY_PATH=/opt/cuda/lib64/${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# node version manager
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
