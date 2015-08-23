function! Consolate()
	:execute "normal! Oconsole.log();\<esc>hP"
	:execute "normal! j0v^hyk0P"
endfunction
command! -nargs=0 Consolate :call Consolate()

" :command! -nargs=0 Consolate put!='console.log('.@\".');'
