" Vim compiler file
" Language: Tact
" Maintainer: Novus Nota

" Don't source twice
if exists("b:current_compiler")
  finish
endif

" Mark as sourced
let b:current_compiler = "tact"

" vint: -ProhibitAbbreviationOption
let s:save_cpo = &cpo
set cpo&vim
" vint: +ProhibitAbbreviationOption

" Prerequisites
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

" Tries to run the build commands for Tact
CompilerSet makeprg=npm\ run\ build

" Alternatively, use :Tact command while editing a .tact file,
" which is slightly smarter and tries to search for the nearest
" package.json before running npm run build against it

" vint: -ProhibitAbbreviationOption
let &cpo = s:save_cpo
unlet s:save_cpo
" vint: +ProhibitAbbreviationOption
