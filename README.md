# cfg
My Config files and scripts.

This master branch is just a blank starting point with the readme. Feel free to fork and use this.

Each other branch represents a specific systems config files, ex: Mac, Ubuntu, Manjaro, etc.. These will mostly be the same but with subtle OS dependent differences.

## The tutorial where I learned to manage config files this way
https://www.atlassian.com/git/tutorials/dotfiles

## How to get started using these configs
Clone the repo as a bare repo and alias the repo to `config`, then set the cfg repo to hide untracked files.
```bash
git clone --bare https://github.com/dmaahs2017/cfg.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

Checkout a branch you want to start off of. master if you want a blank slate, another one if you want to start with some config files.
```
config checkout <branch>
```
After checking out a branch, create a new branch from that one where all your new changes will be, Otherwise use the same branch if you want your config files to sync between machines (I do not like this, because often my different machines have the configs optimized for different tasks, ie work programming vs for fun programming)
```
config checkout -b <new branch>
```

You can now add any file under your home directory into the repository.
