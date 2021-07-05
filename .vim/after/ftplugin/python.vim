set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set colorcolumn=80
setlocal path=.,**

setlocal makeprg=pyrightf
setlocal efm=%f:%l:%c:%m

" if executable('pyrightf')
" 	setlocal makeprg=pyrightf
" 	setlocal efm=%f:%l:%c:%m
" elseif executable('pyright')
" 	setlocal makeprg=pyright
" 	setlocal efm=%f:%l:%c\ %m
" elseif executable('flake8')
" 	setlocal makeprg=flake8
" 	setlocal efm=%f:%l:%c\ %m
" endif
