set number          "set linenumbers

set wrap            " word wrap
set linebreak       " only wrap at breaking characters
set nolist          " list disables linebreak

set mouse=a         " allow proper scrolling with mouse wheel
set hlsearch        " hightlight search terms
set tabstop=4       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4   " Indents will have a width of 2

set softtabstop=4   " Sets the number of columns for a TAB
set colorcolumn=80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=233 guibg=#2c2d27

set expandtab       " Expand TABs to spaces
set autoindent

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe Plugin
" Plugin 'Valloric/YouCompleteMe'
Plugin 'zxqfl/tabnine-vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Lightline settings
set laststatus=2
set noshowmode

" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <silent> <C-k>b :NERDTreeToggle<CR>

" Synatstic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe config
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
