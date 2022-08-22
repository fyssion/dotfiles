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

echo "Alright, looks like we're done here!"