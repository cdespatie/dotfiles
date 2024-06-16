# Make directories
mkdir -p ~/gitrepos
mkdir -p ~/.config

# Set up symlinks
ln -s ~/gitrepos/dotfiles/nvim ~/.config
ln -s ~/gitrepos/dotfiles/tmux/.tmux.conf ~/.tmux.conf
