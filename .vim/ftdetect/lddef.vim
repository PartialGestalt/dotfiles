" Vim filetype detection file
" Language:     LDAPI Definitions
" Author:       Andrew Kephart 
"
" This sets up the syntax highlighting for LDAPI definitions files

if &compatible || version < 600
    finish
endif

" .lddef
au BufNewFile,BufRead *.lddef		set filetype=lddef

