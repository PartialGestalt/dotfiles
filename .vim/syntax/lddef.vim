" Vim syntax file
" Language:         LDAPI Definition 
" Maintainer:       Andrew Kephart <akephart@alereon.com>
" Latest Revision:  2021-03-31

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Define some basic syntax
"
"  Comments
syn region lddefComment	display oneline start='^\s*#' end='$' contains=lddefCleanKey
syn region lddefCComment start='\/\*' end='\*\/' contains=lddefCleanKey

"  Todo markers
syn keyword lddefCleanKey	contained TODO CLEAN

"  Definition types
syn keyword lddefType	token description version param prefix include
syn keyword lddefApiKeyword contained api

" API def is a special.
syn region lddefApi display oneline start='^\s*api\s' end='$' contains=lddefArgs,lddefApiKeyword

" Argument list 
syn region lddefArgs contained display oneline start='(' end=')\;' 

" Direct-to-output
syn region lddefCopy display start='^startcopy' end='^endcopy' contains=lddefCopyType
syn keyword lddefCopyType contained startcopy endcopy

" Mark it up
hi def link lddefCleanKey	Todo
hi def link lddefComment	Comment
hi def link lddefCComment	Constant
hi def link lddefCopy		Constant
hi def link lddefType		Identifier
hi def link lddefCopyType	Identifier
hi def link lddefArgs           Identifier
hi def link lddefApi            Normal
hi def link lddefApiKeyword	Identifier

" Options
:set formatoptions=croql
:set cinoptions=>4,f0,l1,(0,W4  "comment to include paren...)

let b:current_syntax = "lddef"

let &cpo = s:cpo_save
unlet s:cpo_save

