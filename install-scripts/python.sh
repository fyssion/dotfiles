# Install pyenv and Python

curl https://pyenv.run | bash

# Install Python deps

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install Python

pyenv install $1
pyenv global $1

# Also install Poetry

curl -sSL https://install.python-poetry.org | python -
