" credit: Leeren
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set colorcolumn=80
setlocal path=.,**
" TODO
" setlocal include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)
" setlocal define=^\\s*\\\\(def\\\|class\\)\\>
" setlocal includeexpr=PyInclude(v:fname)
"
" function! PyInclude(fname)
"   let parts = split(a:fname, ' import ')
"   let l = parts[0]
"   if len(parts) > 1
" 	let r = parts[1]
" 	let joined = join([l, r]. '.')
" 	let fp = substitute(joined, '\.', '/', 'g') . '.py'
" 	let found = glob(fp, 1)
" 	if len(found)
" 	  return found
" 	endif
"   return substitute(l, '\.', '/', 'g') . '.py'
" endfunction

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


