" Vim indent file
" Language: Tact
" Maintainer: Novus Nota

" Don't source twice
if exists("b:did_indent")
  finish
endif

" Setting indentation function
setlocal indentexpr=s:TactIndent()
let b:undo_indent = "setl cin< cino<"

" Indentation function
function! s:TactIndent()
  let prevlnum = prevnonblank(v:lnum - 1)
  let previous = getline(prevlnum)
  let current = getline(v:lnum)
  if previous =~ "{\s*$"
    if current =~ "}\s*$"
      return indent(prevlnum)
    endif

    return indent(prevlnum) + &shiftwidth
  endif

  if substitute(current, '\s\+', '', 'g') == "}"
    return indent(prevlnum) - &shiftwidth
  endif

  return indent(prevlnum)
endfunction
" TODO: use prettier or new formatter if they're available instead

" Mark as sourced
let b:did_indent = 1
