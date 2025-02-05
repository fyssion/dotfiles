# Git clone from GitHub alias
ghclone() {
    git clone https://github.com/$1
}

# Make a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# python venv management shorthands
pyactivatevenv() {
    source ./venv/bin/activate
}

pycreatevenv() {
    python -m venv venv
    pyactivatevenv
}