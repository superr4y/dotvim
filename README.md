
Installation:

    git clone git://github.com/superr4y/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Add Plugin:
    cd ~/.vim
    git submodule add <url> bundle/<plugin name>

