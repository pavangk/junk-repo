"added by pavan gururaj katti
filetype plugin indent on
"set tags=/home/pavangk/git-repo-latest/march242014/tags
"set tags=/home/pavangk/git-repo-latest/ceilometer/tags
set tags=./tags
let g:molokai_original = 1
set nu
"set syntax on

"[ show file characters ]
"set list
"set nolist
"[ convert to html ]
":TOhtml
"
"color scheme molokai
colorscheme molokai
"auto close of braces plugin
source /home/pavangk/.vim/plugin/autoclose.vim
"show file name in title bar"
set title
set ic
set smartcase
set hlsearch
map <F1> <C-W>w

"leader key mapping
let mapleader = " "
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Git push<CR>

