sudo apt update
sudo apt upgrade

sudo apt install zsh
chsh -s $(which zsh)

sudo apt install tmux

sudo apt install nginx

sudo apt install postgres

sudo apt install pgcli

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo apt install fzy

sudo apt install fd-find
