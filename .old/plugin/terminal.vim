tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
