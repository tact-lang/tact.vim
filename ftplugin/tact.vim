" Vim filetype plugin
" Language: Tact
" Maintainer: Novus Nota

" Don't source twice
if exists('b:did_ftplugin')
  finish
endif

" Set Tact defaults if variable is set
if exists('g:tact_style_guide')
  setlocal expandtab
  setlocal shiftwidth=4
  setlocal tabstop=4
  setlocal softtabstop=4

  setlocal formatoptions-=t
endif

" Comments setup
setlocal commentstring=//\ %s
setlocal comments=s1:/*,mb:*,ex:*/,://
setlocal formatoptions+=crqn

" Setting completefunc (CTRL-x CTRL-u in INSERT mode)
if exists('g:tact_prefer_completefunc')
  setlocal completefunc=tact#Complete
else
  " ...or omnifunc (CTRL-x CTRL-o in INSERT mode)
  setlocal omnifunc=tact#Complete
endif

" Misc.
setlocal matchpairs+="(:),{:},[:],<:>"
let s:win_sep = (has('win32') || has('win64')) ? '/' : ''
if exists('+shellslash')
  setlocal shellslash
endif
let &l:errorformat =
  \ join([
  \   ' %#''file://' . s:win_sep . '%f'': %s: line %l pos %c:%m',
  \   '%m'
  \ ], ',')
setlocal magic

""
" Section: Utility functions and commands
""

function! s:TactFindConfigDir()
  let config_name = "package.json"

  let delimiter = "/"
  if has("win32") || has("win64") || has("win16")
    let delimiter = "\\"
  endif

  " while not in the root folder
  let current_dir = expand("%:p:h")
  while !empty(current_dir) && current_dir != "/" && current_dir != "C:\\"
		let target_file = current_dir . delimiter . config_name

    " check if file exists
		if filereadable(target_file)
      return current_dir
		endif

		" move up one directory level
		let current_dir = fnamemodify(current_dir, ':h')
  endwhile

  " default value, if not found anywhere
  return ''
endfunction

" Compile using the config
function! s:TactCompile()
  let config_dir = s:TactFindConfigDir()
  let cmd = 'cd "' . config_dir . '" && npm run build'

  let shell_check = system("echo $ShellId")
  if substitute(shell_check, '\s', '', 'g') == "Microsoft.PowerShell"
    let cmd = 'cd "' . config_dir . '"; npm run build'
  endif

  execute "!" cmd
endfunction

" Registering it as a command
command Tact :call s:TactCompile()

" Format function
function! s:TactFormat()
  " memorize cursor position
  let cursor_pos = getpos('.')

  " remove trailing whitespace
  :%s/\s\+$//e

  " add empty lines at the end of the file
  :$s/$/\=repeat("\r", 5)/e

  " remove redundant lines
  :%s/\n\{5,}/\r\r/e

  " leave one line at the end of the file
  :$-1,$s/\n//e

  " reformat the file
  normal! gg=G

  " restore cursor
  call setpos('.', cursor_pos)
endfunction

" Set it as a format command
command TactFmt :call s:TactFormat()

""
" Section: Abbreviations
""

if !exists('g:tact_disable_abbreviations')
  " `a_fun` — expands to the function declaration
  iabbrev a_fun fun (a: Int): Int {<CR>return a;<CR>}<esc>^2k3li

  " `a_extfun` — expands to the extension function declaration
  iabbrev a_extfun extends fun (self: Int): Int {<CR>return a;<CR>}<esc>^2k11li

  " `a_mutfun` — expands to the mutable function declaration
  iabbrev a_mutfun extends mutates fun (self: Int) {<CR>self = 1;<CR>}<esc>^2k19li

  " `a_natfun` — expands to the native function declaration
  iabbrev a_natfun @name(store_uint)<CR>native (s: Builder, value: Int, bits: Int): Builder;<esc>^6li

  " `a_co` — expands to the contract declaration
  iabbrev a_co contract {<CR>counter: Int;<CR><CR>init() {<CR>self.counter = 0;<CR>}<CR>}<esc>^6k8li

  " `a_tr` — expands to the trait declaration
  iabbrev a_tr trait {<CR>counter: Int;<CR><CR>fun requireOwner() {<CR>nativeThrowUnless(132, context().sender == self.owner);<CR>}<CR>}<esc>^6k5li

  " `a_st` — expands to the struct declaration
  iabbrev a_st struct {<CR>a: Int;<CR>}<esc>^2k6li

  " `a_me` — expands to the message declaration
  iabbrev a_me message {<CR>a: Int?;<CR>}<esc>^2k7li

  " `a_se` — expands to send(SendParameters{...}) call
  iabbrev a_se send(SendParameters{<CR>to:,<CR>value: ton("1"),<CR>mode: SendIgnoreErrors,<CR>bounce: true,<CR>body: "Hello, World!".asComment()<CR>});<esc>^5kf,i
endif

" Mark as sourced
let b:did_ftplugin = 1
