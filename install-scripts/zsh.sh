# Install zsh

sudo apt-get install -y zsh

# And make it the default

chsh -s $(which zsh)

# Install ohmyzsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k

