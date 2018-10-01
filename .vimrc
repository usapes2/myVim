set nocompatible

so ~/.vim/plugins.vim


syntax enable

set background=dark

set linespace=20

set backspace=indent,eol,start

let mapleader = ','
set number

nmap <leader>ev :tabedit $MYVIMRC<cr>

"-------------Search---------------
set hlsearch
nmap <Leader><space> :nohlsearch<cr>
set incsearch

set autowriteall

"-------------Split Management---------------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------------Visuals---------------
"set t_CO=256

set guioptions-=l
set guioptions-=L
set guioptions-=R
set guioptions-=r


"-------------Compile cpp---------------
nmap ,cp :!g++ -std=c++11 % -o temp && ./temp



"-------------Plugins---------------
nmap <Leader>1 :NERDTreeToggle<cr>

"let NERDTreeHijackNetrw = 0
nmap <leader>r :CtrlPBufTag<cr>

nmap <D-p> :CtrlP<cr>
nmap <Leader>f :tag<space>

"-------------Some issues w/ plugins---------------
let g:ctrlp_custom_ignore =  'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source%
augroup END

