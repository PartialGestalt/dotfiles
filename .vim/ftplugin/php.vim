" SECTION: syntax extras {{{1
syn cluster cCommentGroup contains=cTodo,cCommentStep,cType
syn match   cNumber    "\!0"
syn match   cTodo      display "CLEAN:"
syn match   cCommentStep      display "Step [0-9,\.]*:"
syn match   cCommentStep      display "Section [0-9,\.]*:"
" }}}1

" SECTION: misc settings {{{1
:hi def link cCommentStep CommentStep
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set cindent
:set autoindent
:set comments=sr:/*,mb:*,el:*/,://,:///
:set formatoptions=croql
:set cinoptions=>2,f0,l1,(0,W4  "comment to include paren...)
:set foldmethod=marker
" }}}1
