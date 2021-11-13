# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install tmux

brew install nginx

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install postgres

# Start postgres on launch
/usr/local/opt/postgresql/bin/postgres -D /usr/local/var/postgres

brew install pgcli 

brew install fzy

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
