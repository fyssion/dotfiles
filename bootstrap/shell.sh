# Install zsh

sudo apt-get install -y zsh

# And make it the default

chsh -s $(which zsh)

# Install ohmyzsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fzf, fd, bat
sudo apt-get install -y fzf bat fd-find

# let me type bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# TODO: install ripgrep too but maybe with cargo

