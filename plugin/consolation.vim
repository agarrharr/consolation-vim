function! Consolate()
	:execute "normal! Oconsole.log();\<esc>hP"
	:execute "normal! =="
endfunction
command! -nargs=0 Consolate :call Consolate()

" :command! -nargs=0 Consolate put!='console.log('.@\".');'
