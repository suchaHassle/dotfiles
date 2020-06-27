set number          "set linenumbers

set wrap            " word wrap
set linebreak       " only wrap at breaking characters
set nolist          " list disables linebreak

set mouse=a         " allow proper scrolling with mouse wheel
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set hlsearch
set incsearch

set shiftwidth=2   " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB

set whichwrap+=<,>,[,]

set termguicolors

set colorcolumn=80,120

" highlight ColorColumn ctermbg=233 guibg=#2c2d27

set expandtab       " Expand TABs to spaces
set autoindent

filetype off                  " required
syntax on

set backspace=indent,eol,start

set encoding=UTF-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe Plugin
" Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'zxqfl/tabnine-vim'
Plugin 'rhysd/vim-clang-format'
"Plugin 'itchyny/lightline.vim'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
"Plugin 'romainl/flattened'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'tomasiser/vim-code-dark'
Plugin 'easymotion/vim-easymotion'

let g:EasyMotion_smartcase = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
if exists("g:loaded_webdevicons")
        call webdevicons#refresh()
endif

let g:indentLine_color_gui = '#45413b'
let g:indentLine_char = '┊'
let g:indentLine_filetypeExclude = [ 'markdown', 'json' ]

let g:better_whitespace_guicolor = '#a2a09d'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
let g:show_spaces_that_precede_tabs=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_powerline_fonts = 1

set t_Co=256
set t_ut=
" let g:codedark_conservative = 1
colorscheme codedark
let g:airline_theme = 'codedark'

" Lightline settings
"set laststatus=2
"set noshowmode

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

hi clear EasyMotionTarget
hi clear EasyMotionShade

hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=none

hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred

hi EasyMotionMoveHL ctermbg=green ctermfg=black
hi EasyMotionIncSearch ctermbg=green ctermfg=black

hi Normal guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermbg=NONE guibg=NONE
