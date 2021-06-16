""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Configuration

runtime macros/matchit.vim     " matches if/else with % (for c-style langs only)
syntax on                      " Syntax highlighting
set wildmenu                   " Show options for Ex commands
set backspace=indent,eol,start " Backspace over everything
set clipboard=unnamed          " Use system keyboard
set incsearch                  " Incremental search
set hidden                     " Keep persistent terminal
set hlsearch                   " Stop highlighting searches
set encoding=UTF-8             " Set encoding (useful for correctly displaying icons)
set shiftwidth=4               " 4-space indentations
set expandtab                  " Expand tabs to spaces
set noswapfile                 " Don't use swap files
set noerrorbells               " No error bells
set vb t_vb=                   " No visual errors
set undofile                   " Maintain undo history for each file
set undodir=~/.vim/undodir     " Directory in which to store undo files
set ic scs                     " case insensitive search with case-sensitive completion
set autowrite                  " Autosave contents of buffer on make among other things
set autoindent                 " Automatically copy indentation from the previous line
set ruler                      " Show location in file at the bottom
set nobackup                   " Don't create backups of files that are being edited
set nowritebackup              " Same as above
set confirm                    " Ask before performing destructive operations
set ch=2                       " Increase height of command
set ls=2                       " Always have status line
set termguicolors              " Needed to make the colorschemes work
set undofile                   " Persistent undo

" A good set of defaults for all languages
set expandtab shiftwidth=4 tabstop=4 softtabstop=4

colo apprentice
let $RTP='$HOME/.vim/' " Set vim config path

let &t_ut=''      " Background erase workaround (see https://sw.kovidgoyal.net/kitty/faq.html#using-a-color-theme-with-a-background-color-does-not-work-well-in-vim)

""""""""""""""""""""""""""""""""""""""""""""""""""
" Python Syntax highlighting
let g:python_highlight_all = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
let g:snipMate = { 'snippet_version' : 1 }

""""""""""""""""""""""""""""""""""""""""""""""""""
" traces
let g:traces_abolish_integration = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" rooter
let g:rooter_silent_chdir = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" Netrw
let g:netrw_localrmdir='rm -r' " Use this command to delete stuff

""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU
nnoremap gr :MRU<CR>/

""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE

let g:ale_completion_enabled = 1
let g:ale_lint_delay=200  " slightly slower linting than default
let g:ale_set_balloons=1  " show hover information
let g:ale_lint_on_text_changed = "normal"

""""""""""""""""""""""""""""""""""""""""""""""""""
" Romainl gist

nnoremap gf :g//#<Left><Left>

function! CCR()
    " grab the current command-line
    let cmdline = getcmdline()
    
    " does it end with '#' or 'number' or one of its abbreviations?
    if cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
        " press '<CR>' then ':' to enter command-line mode
        return "\<CR>:"
    else
        " press '<CR>'
        return "\<CR>"
    endif
endfunction

" map '<CR>' in command-line mode to execute the function above
cnoremap <expr> <CR> CCR()

