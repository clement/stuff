" Load pathogenic plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on

" Base options
set showmode
set vb t_vb=
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set number
set backspace=eol,start
set title
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set ruler
set laststatus=2
syntax on

autocmd BufWritePre *.py normal :%s/\s\+$//

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
inoremap <Nul> <C-x><C-o>

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

autocmd FileType htmldjango.html let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"      " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1%}\r{% endif %}"            " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1%}\r{% endwith %}"        " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"  " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1%}\r{% endfor %}"          " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("v")} = "{{ \r }}"                                      " For surrounds
autocmd FileType htmldjango.html let g:surround_{char2nr("V")} = "{{\r}}"                                        " For surrounds

let g:localvimrc_ask=0 " localvim rc : no nagging confirmation

" Switch easily between buffers
noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
set hidden " Can switch off an unsaved buffer

" Shortcuts for nerdtree
nmap <leader>q :NERDTreeToggle<CR>

" Shortcut for fuzzyfinder textmate
map <leader>t :FuzzyFinderTextMate<CR>
map <leader>r :FuzzyFinderTextMateRefreshFiles<CR>
let g:fuzzy_ignore= "*.pyc,*.swp,*~,*/env/*,*/env_*/*"


" color scheme
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
