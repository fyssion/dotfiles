# Interactively installs programs

source ./functions.sh

# zsh
if prompt "Install zsh utilties?"; then
./zsh.sh
    echo "Done!"
fi

# python
if prompt "Install Python?"; then
    echo -n "Please enter the Python version to install: "
    read -r python_version
    ./python.sh $python_version
    echo "Done!"
fi

# rust
if prompt "Install Rust?"; then
    ./rust.sh
    echo "Done!"
fi

# node
if prompt "Install Node?"; then
    ./node.sh
    echo "Done!"
fi

# ruby
if prompt "Install Ruby?"; then
    sudo apt-get install -y ruby-full
    echo "Done!"
fi

# postgres
if prompt "Install PostgreSQL?"; then
    sudo apt-get install -y postgresql postgresql-contrib
    echo "Done!"
fi

# gh cli
if prompt "Install GitHub CLI?"; then
    # https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-raspberry-pi-os-apt
    type -p curl >/dev/null || sudo apt install curl -y
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && sudo apt update \
    && sudo apt install gh -y
    echo "Done!"
fi

echo "Alright, looks like we're done here!"