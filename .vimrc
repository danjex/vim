syntax on
set smartindent
set shiftwidth=2
set incsearch
set hlsearch
set ts=2
set noerrorbells
set vb
set nowrap
set expandtab
set wildmode=list:longest
set nu
set bs=2
set directory=~/.vim_backup
set ruler
set showmatch

" Set colors
" set t_Co=256

" Show annoying characters
set encoding=utf-8
set listchars=tab:>-,trail:~
set list

noremap . .`[

map ] <Esc>:cnext<CR>zz
map [ <Esc>:cprevious<CR>zz
"map <F1> :!cleartool lsvtree -g %<CR>
"map <F2> :!cleartool unco %<CR>
"map <F3> :!cleartool co -nc %<CR>
"map <F4> :!cleartool ci -nc %<CR>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
map <F6> :!cleartool ls %<CR>
map <F7> :if &cuc==0 <Bar> set cuc <Bar> else <Bar> set nocuc <Bar> endif <CR>
map <silent> <F9> :NERDTree<CR>
map ; :call GetHelp()<CR>

" Mappings for resize
noremap <silent> <C-Up> :ObviousResizeUp<CR>
noremap <silent> <C-Down> :ObviousResizeDown<CR>
noremap <silent> <C-Left> :ObviousResizeLeft<CR>
noremap <silent> <C-Right> :ObviousResizeRight<CR>  

" Mapping to remove trailing whitespace with \rtw
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Mapping to remove tabs with \rtabs
nnoremap <Leader>rtabs :%s/\t//e<CR>

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-stay)
map ?  <Plug>(incsearch-backward)
map g/  <Plug>(incsearch-forward)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Clearcase mappings
nnoremap <Leader>cls  :!cleartool ls %<CR>
nnoremap <Leader>cci  :!cleartool ci -nc %<CR>
nnoremap <Leader>cco  :!cleartool co -nc %<CR>
nnoremap <Leader>ccou :!cleartool co -nc -unr %<CR>
nnoremap <Leader>cuco :!cleartool unco %<CR>
nnoremap <Leader>cvtr :!cleartool lsvtree -g  %<CR>

" Change from nonworking arrows to characters in directory
let g:NERDTreeDirArrows=0

set mouse+=a
set ttymouse=xterm2

"use  pathogen for installation for plugins that use
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set t_Co=256
let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark
