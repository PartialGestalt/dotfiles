" SECTION: Early setup {{{1
"	Always want filetypes and plugins
:filetype plugin on
"       Force some extra type info
	au BufNewFile,BufRead make*.env,*.mk,make.unix,make.linux setlocal filetype=make
	au BufNewFile,BufRead *.gob setlocal filetype=c
	au BufNewFile,BufRead *.rules setlocal filetype=udevrules
	au BufNewFile,BufRead *.apex setlocal filetype=apex
	au BufNewFile,BufRead *.afx  setlocal filetype=xml
	au BufNewFile,BufRead *.fd3  setlocal filetype=xml
	au BufNewFile,BufRead *.fd2  setlocal filetype=xml
" End Early setup }}}1
"
" SECTION: General options {{{1
"       Display options
colorscheme kephart
:au GUIEnter * :colorscheme zenburn
:set wrap
"	Force status line
:set laststatus=2
"	Autospell controls
let spell_auto_type = ""
"	Case and searches
:set ignorecase
:set smartcase
"       Modify where new windows come up
:set splitright
:set splitbelow
"       Completion routines
:set completeopt=menu,longest,menuone
" End General options }}}1
"
" SECTION: Cscope {{{1
"  Setup {{{2
if has("cscope")
	set cst      "Use cscope for tags, too
	set csto=0   "Do cscope _before_ ctags
	set nocsverb "Don't be verbose when loading DB
"  End Setup 2}}}
"  Load default DBs {{{2
"  	"The current DB may not be found by autoload script
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	if filereadable("doc/cscope.out")
		cs add doc/cscope.out
	endif
	if $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	" Always want kernel DB, too?
	"if filereadable("/usr/src/linux/cscope.out")
	"	cs add /usr/src/linux/cscope.out /usr/src/linux
	"endif
	" Others???
endif
"  End DB 2}}}
" End Cscope }}}1
"
" SECTION: Mappings {{{1
"    cscope {{{2
	nmap \cg :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap \cs :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap \cf :cs find f <C-R>=expand("<cword>")<CR><CR>
	nmap \ci :cs find i <C-R>=expand("<cword>")<CR><CR>
	nmap \cj :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap \cG :cs find g 
	nmap \cS :cs find s 
	nmap \cF :cs find f 
	nmap \cI :cs find i 
	nmap \cJ :cs find c 
"   }}}2
"   window control {{{2
	nmap <C-J><C-J> <C-W>j<C-W><C-_>
	nmap <C-K><C-K> <C-W>k<C-W><C-_>
	nmap <C-L><C-L> <C-W><C-_>
	nmap <C-H><C-H> <C-W>=
"   }}}2
"   templates {{{2
	:map ** O/** ***************************************************************************@brief@details@param@returns Result code indicating success or failure mode@remarks*/
	:map *f O/** ***************************************************************************@file@brief@details<em>Copyright (C) 2009, Alereon, Inc.  All rights reserved.</em>*/
	:map @@ A /**< */hhi
	:map <F12> :cne<CR>
	:map <F11> :cpre<CR>
"   }}}2
"   jumpfiles {{{2
	nmap \ee :edit <C-R>=expand("<cWORD>")<CR><CR>
	nmap \eb :edit <C-R>=expand("<cword>")<CR><CR>
"   }}}2
"   diff {{{2
	nmap \dg :diffget<CR>
	nmap \dp :diffput<CR>
	nmap <F7> :diffget<CR>
	nmap <F8> :diffput<CR>
"   }}}2
"   help override {{{2
    :map <F1> <Esc>
    :lmap <F1> <Esc>
    :imap <F1> <Esc>
"   }}}2
" End Mappings }}}1
"
" SECTION: Session management options {{{1
"       Save on exit
":au VimLeave * mks ~/.vim/sessions/default
"	Restore on this entry...
":source ~/.vim/sessions/default
" End Session options }}}1
"
" SECTION: Other generic customizations {{{1
	fu! Eighty()
		:set columns=80
		:qa!
	endf
	fu! OneSixtyOne()
		:set columns=161
		:set lines=43
		:qa!
	endf

" End Session options }}}1
