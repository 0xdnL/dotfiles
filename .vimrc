"
" note to self
" . .vimrc from bash won't work
" :source .vimrc from vim instead ;)
"
set modeline
" default
set encoding=utf-8
"set shiftwidth=2
"set softtabstop=2
set tabstop=2
set backspace=indent,eol,start

" pathogen
"execute pathogen#infect()

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" air-line
"set t_Co=256
"let g:airline_powerline_fonts = 1

" general
set autoindent
set hlsearch
syntax on
"colorscheme desert
"colorscheme delek
filetype plugin on

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" https://stackoverflow.com/a/2514520
set pastetoggle=<F3>

" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror
" autocmd BufWinEnter * NERDTreeMirror

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

function! InsertCopyright()
    let l:year = strftime("%Y")
    return
        \  "/**\n"
        \. "Copyright My Great Company, " . l:year . ". All rights reserved.\n"
        \. "/"
endfunction

function! InsertCode()
    return
        \  "```sh\n"
        \. "```"
endfunction

iabbrev <expr> copy# InsertCopyright()
iabbrev <expr> code <Tab> InsertCode()

"To use fzf in Vim, add the following line to your .vimrc:
set rtp+=/usr/local/opt/fzf
