set nocompatible

""" Vundle plugin manager {{{
    """ Automatically setting up Vundle {{{
    """ http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
        let has_vundle=1
        if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
            echo "Installing Vundle..."
            echo ""
            silent !mkdir -p $HOME/.vim/bundle
            silent !git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
            let has_vundle=0
        endif
    """ }}}
    """ Initialize Vundle {{{
        filetype off                                " required to init
        set rtp+=$HOME/.vim/bundle/Vundle.vim       " include vundle
        call vundle#begin()                         " init vundle
    """ }}}
    """ Github repos, uncomment to disable a plugin {{{
        Plugin 'gmarik/Vundle.vim'

        """ Local plugins (and only plugins in this file!) {{{
            if filereadable($HOME."/.vimrc.plugins")
                source $HOME/.vimrc.plugins
            endif
        """ }}}

        " Edit files using sudo/su
        Plugin 'chrisbra/SudoEdit.vim'

        " <Tab> everything!
        Plugin 'ervandew/supertab'

        " Fuzzy finder (files, mru, etc)
        Plugin 'ctrlpvim/ctrlp.vim'

        " A pretty statusline, bufferline integration
        Plugin 'itchyny/lightline.vim'
        Plugin 'bling/vim-bufferline'

        " Git wrapper inside Vim
        Plugin 'tpope/vim-fugitive'

        " Vim signs (:h signs) for modified lines based off Git
        Plugin 'airblade/vim-gitgutter'

        " Awesome syntax checker.
        " REQUIREMENTS: See :h syntastic-intro
        Plugin 'scrooloose/syntastic'
    """ }}}
    """ Finish Vundle stuff {{{
        call vundle#end()
    """ }}}
    """ Installing plugins the first time, quits when done {{{
        if has_vundle == 0
            :silent! PluginInstall
            :qa
        endif
    """ }}}
""" }}}

syntax on

set number
set wildmenu

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
