# Install Python deps

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install System Python
PYTHON_VERSION=$1

wget -O /tmp/Python-$PYTHON_VERSION.tar.xz https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz
tar -xf /tmp/Python-$PYTHON_VERSION.tar.xz -C /tmp
pushd /tmp/Python-$PYTHON_VERSION

echo "Installing Python $1 from source. This may take awhile..."
./configure --enable-optimizations  # I won't be installing <3.6
make
sudo make install
popd

# Make default
SHORT_VERSION=${PYTHON_VERSION%.*}
[ -e "/usr/bin/python3" ] && sudo rm /usr/bin/python3
sudo ln -s /usr/local/bin/python$SHORT_VERSION /usr/bin/python3
[ -e "/usr/bin/python" ] && sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3 /usr/bin/python
[ -e "/usr/bin/pip3" ] && sudo rm /usr/bin/pip3
sudo ln -s /usr/local/bin/pip$SHORT_VERSION /usr/bin/pip3
[ -e "/usr/bin/pip" ] && sudo rm /usr/bin/pip
sudo ln -s /usr/bin/pip3 /usr/bin/pip

# Install pipx

pip install --user pipx

# Install Hatch

pipx install hatch

# Also install Poetry

curl -sSL https://install.python-poetry.org | python -
