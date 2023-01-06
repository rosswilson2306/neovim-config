nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles! --exclude-standard --others --cached')."\<cr>"
let $FZF_DEFAULT_OPTS = '--reverse --ansi --keep-right'
let g:fzf_layout = {  'down': '~40%' }

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
"   \  fzf#vim#with_preview(), <bang>0)
