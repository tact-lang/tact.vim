" Vim syntax file
" Language: Tact
" Maintainer: Novus Nota

" Don't source twice
if exists("b:current_syntax")
  finish
endif

" Add folds
syn region tactFold start='{' end='}' transparent fold

" Make syntax matches case-sensitive
syn case match

""
" Note: Their order MATTERS! Don't move following lines around.
" Section: Definitions
" {{{1
""

" Identifiers & Functions
syn match tactIdentifier "\zs\<\([a-z_][a-zA-Z0-9_]*\)\>\ze"
syn match tactFunction "\zs\<\([a-z_][a-zA-Z0-9_]*\)\ze(\@="

" Special methods
syn match tactKeyword "\<init(\@="
syn match tactKeyword "\<bounced(\@="
syn match tactKeyword "\<external(\@="
syn match tactKeyword "\<receive(\@="

" Statements, Operators & Keywords
syn keyword tactStatement return
syn keyword tactConditional if else
syn keyword tactException try catch
syn keyword tactRepeat while repeat do until foreach
syn match tactOperator "!"
syn match tactOperator "!="
syn match tactOperator "!!"
syn match tactOperator "\*"
syn match tactOperator "\*="
syn match tactOperator "/"
syn match tactOperator "/="
syn match tactOperator "%"
syn match tactOperator "%="
syn match tactOperator "-"
syn match tactOperator "-="
syn match tactOperator "+"
syn match tactOperator "+="
syn match tactOperator "="
syn match tactOperator "=="
syn match tactOperator "<"
syn match tactOperator "<="
syn match tactOperator "<<"
syn match tactOperator ">"
syn match tactOperator ">="
syn match tactOperator ">>"
syn match tactOperator "\~"
syn match tactOperator "|"
syn match tactOperator "|="
syn match tactOperator "||"
syn match tactOperator "&"
syn match tactOperator "&="
syn match tactOperator "&&"
syn match tactOperator "\^"
syn match tactOperator "\^="
syn keyword tactKeyword
    \ as const let fun native primitive public extend self with in
    \ get abstract virtual override extends mutates inline initOf
syn match tactKeyword "\<contract\>:\@!"
syn match tactKeyword "\<message\>:\@!"
syn match tactKeyword "\<struct\>:\@!"
syn match tactKeyword "\<trait\>:\@!"

" Imports & Bindings to FunC or Fift assembly
syn keyword tactImport import
syn match tactNativeFunction
    \ "@\<name\>" nextgroup=tactNativeIdentifier skipwhite skipempty
syn region tactNativeIdentifier
    \ contained matchgroup=tactNativeFunctionParens
    \ start="(" end=")" contains=tactNativeIdentifierName
    \ keepend skipwhite skipempty
syn match tactNativeIdentifierName contained ".*"
syn match tactNativeInterface
    \ "@\<interface\>" nextgroup=tactNativeInterfaceIdentifier skipwhite skipempty
syn region tactNativeInterfaceIdentifier
    \ contained matchgroup=tactNativeFunctionParens
    \ start="(" end=")" contains=tactNativeInterfaceIdentifierName
    \ keepend skipwhite skipempty
syn region tactNativeInterfaceIdentifierName
    \ oneline start=+\z(["]\)+ end=+\z1+ contains=tactSpecialChar keepend
syn match tactAsmArrangement
    \ "asm" nextgroup=tactAsmArrangementParens skipwhite skipempty
syn region tactAsmArrangementParens
    \ contained matchgroup=tactNativeFunctionParens
    \ start="(" end=")" contains=tactIdentifier,tactDecNumber,tactDecNumberLeadingZero,tactArrowRight
    \ keepend skipwhite skipempty
syn match tactArrowRight "->"

" Types & Structures
syn keyword tactType
    \ Int Bool Address Slice Cell Builder String StringBuilder
syn match tactNativeType "\%(coins\|remaining\|bytes32\|bytes64\|int257\|u\?int\%(2[0-5][0-6]\|[0-9]\d\?\)\)"
syn match tactGenericType
    \ "\<\(map\|bounced\)\><\@=" nextgroup=tactGenericTypeBounds skipwhite
syn region tactGenericTypeBounds
    \ contained matchgroup=tactGenericTypeParens
    \ start="<" end=">" keepend skipwhite skipempty
    \ contains=tactContainedComma,tactContainedAs,tactType,tactNativeType,tactStructure
syn match tactContainedComma contained ","
syn keyword tactContainedAs contained as
syn match tactStructure "\zs\<\([A-Z]\w*\)\>\ze"

" Special chars & Punctuation
syn match tactSpecialChar
    \ contained "\\\(u\x\{4\}\|u{\x\{1,6\}}\|x\x\x\|[\\\"nrtvbf]\)" extend
syn match tactDelimiter "[{}\[\]();,.:?]"

" Comments
syn keyword tactTodo contained TODO FIXME XXX NOTE TBD
syn region tactCommentLine
    \ start="//" end="$" contains=tactTodo,tactSpecialChar
syn region tactCommentBlock
    \ start="/\*" end="\*/" contains=tactTodo,tactSpecialChar
syn match tactUnusedIdentifier "\zs\<\(_\)\>\ze"

" Literals & primitives
syn keyword tactConstant null
syn match tactConstant "\zs\<\([A-Z][A-Z0-9_]*\)\>\ze"
syn region tactString
    \ oneline start=+\z(["]\)+ end=+\z1+ contains=tactSpecialChar keepend
syn match tactDecNumberLeadingZero "\<0\d*\>"
syn match tactDecNumber "\<[1-9]\%(_\?\d\)*\>"
syn match tactHexNumber "\<0[xX]\x\%(_\?\x\)*\>"
syn match tactOctNumber "\<0[oO]\o\%(_\?\o\)*\>"
syn match tactBinNumber "\<0[bB][01]\%(_\?[01]\)*\>"
syn keyword tactBool true false

" Errorneous constructs
syn match tactInvalidIdentifier "\zs\<\(\%(__gen\|__tact\)[a-zA-Z0-9_]*\)\>\ze"

" }}}1

""
" Note: Their order doesn't matter
" Section: Highlights
" {{{1
""

" Erroneous constructs
hi def link tactInvalidIdentifier Error

" Special symbols & Punctuation
hi def link tactSpecialChar SpecialChar
hi def link tactDelimiter Delimiter
hi def link tactContainedComma Delimiter
hi def link tactGenericTypeParens Delimiter
hi def link tactNativeFunctionParens Delimiter

" Todos
hi def link tactTodo Todo

" Comments
hi def link tactTodo Todo
hi def link tactCommentLine Comment
hi def link tactCommentBlock Comment
hi def link tactUnusedIdentifier Comment

" Constants & Literals
if !exists("g:tact_blank_identifiers")
  hi def link tactConstant Constant
endif
hi def link tactString String
hi def link tactDecNumberLeadingZero Number
hi def link tactDecNumber Number
hi def link tactHexNumber Number
hi def link tactOctNumber Number
hi def link tactBinNumber Number
hi def link tactBool Boolean

" Identifiers & Function names
if !exists("g:tact_blank_identifiers")
  hi def link tactIdentifier Identifier
endif
hi def link tactFunction Function

" Statements & Keywords
hi def link tactStatement Statement
hi def link tactConditional Conditional
hi def link tactException Exception
hi def link tactRepeat Repeat
hi def link tactOperator Operator
hi def link tactArrowRight Operator
hi def link tactKeyword Keyword
hi def link tactContainedAs Keyword

" Imports & Pre-processing
hi def link tactImport Include
hi def link tactNativeFunction Macro
hi def link tactNativeIdentifierName PreProc
hi def link tactNativeInterface Macro
hi def link tactNativeInterfaceIdentifierName String
hi def link tactAsmArrangement Macro

" Types & Structures
hi def link tactType Type
hi def link tactNativeType Type
hi def link tactGenericType Type
if !exists("g:tact_blank_structures")
  hi def link tactStructure Structure
endif

" }}}1

" Force vim to sync at least x lines.
" This solves the multiline comment not being highlighted issue.
syn sync minlines=100

" To remember syntax rules
let b:current_syntax = "tact"
