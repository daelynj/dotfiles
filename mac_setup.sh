/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install tmux
brew install nginx
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install postgres
/usr/local/opt/postgresql/bin/postgres -D /usr/local/var/postgres
brew install pgcli 
brew install fzy
