" Vim filetype plugin file
" Language:     SNDL (SolNet Descriptor Language)
" Maintainer:   Andrew Kephart <andrew dot kephart at alereon dot com>
" Last Changed: 2020-11-03
"
"
"
if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

" Define our bits
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set cindent
:set autoindent
:set cinoptions=>4,f0,l1,(0,W4


" Restore the saved compatibility options.
let &cpo = s:save_cpo
unlet s:save_cpo
