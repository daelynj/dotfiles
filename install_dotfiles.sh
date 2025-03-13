ln -fs ~/dotfiles/zsh/.zshrc ~/
ln -fs ~/dotfiles/git/.gitconfig ~/
ln -fs ~/dotfiles/tmux/.tmux.conf ~/
ln -fs ~/dotfiles/.inputrc ~/

if [ ! -d ~/.config/nvim/ ]; then
  mkdir ~/.config/nvim/
fi

ln -fs ~/dotfiles/nvim/init.vim ~/.config/nvim/

if [ ! -d ~/.config/i3/ ]; then
  mkdir ~/.config/i3/
fi

ln -fs ~/dotfiles/i3/config ~/.config/i3
ln -fs ~/dotfiles/helix ~/.config/helix
