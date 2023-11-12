# Setup
### Clone this repo
```bash
git clone --bare https://github.com/yasteen/dotfiles.git ~/.dotfiles
```

### Add an alias to manage dotfiles
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

### Ignore untracked files
```bash
dotfiles config --local status.showUntrackedFiles no
```

### Checkout
```bash
dotfiles checkout
```
