set showmode
set vb t_vb=
set ruler
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
syntax on

autocmd BufWritePre *.py normal :%s/\s\+$//

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
