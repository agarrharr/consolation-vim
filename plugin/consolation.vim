function! Consolate()
	:execute "normal! Oconsole.log();\<esc>hP"
endfunction
command! -nargs=0 Consolate :call Consolate()
