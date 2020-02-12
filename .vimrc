set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'godlygeek/tabular'

"Plugin 'preservim/nerdtree'
"map <C-i> :NERDTreeToggle<CR>

"Plugin 'plasticboy/vim-markdown'
"let g:vim_markdown_math = 1

Plugin 'majutsushi/tagbar'
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <C-o> :TagbarToggle<CR>

Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

Plugin 'airblade/vim-gitgutter'

Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_autostart=0

Plugin 'Yggdroot/indentLine'
let g:indentLine_char_list = ['┊']
let g:indentLine_color_term = 239


python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
"set showtabline=2 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set encoding=utf-8
"let g:airline_theme='badwolf'
"let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'
filetype plugin indent on     " required (根據檔案類型決定自動縮台格式)


set number
set ai
set tabstop=4
set shiftwidth=4
set tw=80
set expandtab

set cursorline
set clipboard=unnamedplus
set showcmd

set incsearch
set hlsearch
set nohlsearch

" last time position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" key mapping
inoremap{<CR> {<CR>}<Esc>ko
inoremap jk <ESC>
"inoremap <c-h> <esc>xa

let mapleader=','
nnoremap <leader>v :vsplit $MYVIMRC<cr>
nnoremap <leader>t :term<cr><c-w><s-j>
nnoremap <leader>l :bNext<cr>
nnoremap <leader>h :bprevious<cr>

" color setting
syntax on
set laststatus=2
set t_Co=256

" >colorsheme <default, koehler, darkblue, desert, shine, ron, torte>
colorscheme ron 
"colorscheme monokai

" marokai set
hi Normal         ctermfg=254   ctermbg=none
hi CursorLine                   ctermbg=none  cterm=underline
hi CursorLineNr   ctermfg=208   ctermbg=none  cterm=bold
hi LineNr         ctermfg=245   ctermbg=none  cterm=none
" 括號顏色
hi MatchParen     ctermfg=161   ctermbg=254   cterm=bold
