#!/bin/bash
customize_vim() {
if [ ! -d $HOME/.vim/colors ]; then
    mkdir -pv $HOME/.vim/colors
else
    printf "Directory .vim/colors already exist \n" > /dev/null 2>&1
fi
if [ ! -f $HOME/.vim/colors/molokai.vim ]; then
    wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O $HOME/.vim/colors/molokai.vim
else
    printf "Color scheme molokai.vim already exist! \n"
fi
if [ -f $HOME/.vimrc ]; then
    bak_date=$(date +%d.%m.%y)
    mv -v $HOME/.vimrc $HOME/.vimrc_bak_${bak_date}
fi

echo "set nonu
set autoindent
set smartindent
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set syntax=on
set t_Co=256
set background=dark
set noerrorbells
set so=6
set nobackup
set nowb
set noswapfile
set laststatus=2
set pastetoggle=<F2>
colorscheme molokai" > $HOME/.vimrc
}

customize_vim