" Vim syntax file
" Language:         APEX script file
" Maintainer:       Andrew Kephart <akephart@alereon.com>
" Latest Revision:  2008-11-25

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Base keywords (must be before comments)
syn keyword apexShellKeyword    contained help config import exit quit return echo
syn region apexShellCommand     display oneline start='^' end=' ' contains=apexShellKeyword

" Script comments
syn region  apexHashComment     display oneline start='^\s*#' end='$' contains=apexCleanKey
syn region  apexCppComment      display oneline start='//' end='$' contains=apexCleanKey
" TODO bits in a script comment section
syn keyword apexCleanKey        contained TODO CLEAN


hi def link apexCleanKey     Todo
hi def link apexHashComment  Comment
hi def link apexCppComment   Comment
hi def link apexShellKeyword Identifier

let b:current_syntax = "apex"

let &cpo = s:cpo_save
unlet s:cpo_save
