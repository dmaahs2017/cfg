# cfg
My Config files and scripts.

Each branch represents a specific systems config files, ex: Mac, Ubuntu, Manjaro, etc.. These will mostly be the same but with subtle OS dependent differences.

## The tutorial where I learned to manage config files this way
https://www.atlassian.com/git/tutorials/dotfiles

## How to get started using these configs
Clone the repo as a bare repo and alias the repo to `config`, then set the cfg repo to hide untracked files.
```bash
git clone --bare https://github.com/dmaahs2017/cfg.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

Then:
```
config checkout <branch>
```
```
config checkout -b <new branch>
```

You can now add any file under your home directory into the repository.
