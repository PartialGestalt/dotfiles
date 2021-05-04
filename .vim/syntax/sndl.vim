" Vim syntax file
" Language:         SolNet Descriptor Language (SNDL)
" Maintainer:       Andrew Kephart <akephart@alereon.com>
" Latest Revision:  2020-11-02

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Define some basic syntax
"
"  Comments
syn region sndlComment	display oneline start='^\s*#' end='$' contains=sndlCleanKey

"  Todo markers
syn keyword sndlCleanKey	contained TODO CLEAN

"  Special descriptor names
syn match sndlPlus	display /+[a-z]*/

" Mark it up
hi def link sndlCleanKey	Todo
hi def link sndlComment		Comment
hi def link sndlPlus		Identifier

let b:current_syntax = "sndl"

let &cpo = s:cpo_save
unlet s:cpo_save

