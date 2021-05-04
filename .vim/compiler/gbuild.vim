" Vim compiler file
" Compiler:	Green Hills gbuild
" Maintainer:	Andrew Kephart (andrew.kephart@alereon.com
" Last Change:	2018 Feb 06

if exists("current_compiler")
  finish
endif

let current_compiler = "gbuild"
let s:keepcpo= &cpo
set cpo&vim

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=\"%f\"\,\ line\ %l:\ %m,%Dgbuild:\ Entering\ directory:\ \'%f\'

let &cpo = s:keepcpo
unlet s:keepcpo
