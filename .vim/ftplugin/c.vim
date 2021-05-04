" SECTION: syntax extras {{{1
syn cluster cCommentGroup contains=cTodo,cCommentStep,cType
syn match   cNumber    "\!0"
syn match   cType      display "\<T_[S,E]_[A-Z,0-9,_]*\>"
syn match   cType      display "\<T_[A-Z,0-9,_]*\>"
syn match   cTodo      display "CLEAN:"
syn match   cCommentStep      display "Step [0-9,\.]*:"
syn match   cCommentStep      display "Section [0-9,\.]*:"
syn match   cPreProc      display "\<AL_ERR[A-Z,0-9,_]*\>"
syn match   cPreProc      display "\<AL_SUCCESS\>"
" }}}1

" SECTION: misc settings {{{1
:hi def link cCommentStep CommentStep
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set cindent
:set autoindent
:set comments=sr:/*,mb:*,el:*/,://,:///
:set formatoptions=croql
:set cinoptions=>4,f0,l1,(0,W4  "comment to include paren...)
" }}}1
