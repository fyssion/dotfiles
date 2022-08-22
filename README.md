# dotfiles

These are my dotfiles.  
As of writing, I don't really know what I'm doing, so don't use this as an example or anything.

## Installation

I'm using [dotbot](https://github.com/anishathalye/dotbot) at the moment.
To install the dotfiles, simply run the following.

```sh
# You'll probably wanna do this in your home folder
$ git clone --recurse-submodules https://github.com/Fyssion/dotfiles .dotfiles
$ cd .dotfiles
$ ./install
````

I've also created a simple bootstrap script to install some of my development tools.
Please note that it'll only work on Debian-based distros and without and guarantees.

```sh
# Assuming your CWD is this repo
$ cd bootstrap && ./bootstrap.sh
```
