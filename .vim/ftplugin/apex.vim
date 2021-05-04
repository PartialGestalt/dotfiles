" Vim filetype plugin file
" Language:         APEX script file
" Maintainer:       Andrew Kephart <akephart@alereon.com>
" Latest Revision:  2008-11-25

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl com< cms< fo<"

setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions+=croql
