let mapleader = " "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>g :Rg!<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>rs :let @/ = ""<CR>
inoremap <c-j> <esc>ja
inoremap <c-k> <esc>ka
inoremap <c-h> <esc>ha
inoremap <c-l> <esc>la
au TermOpen *fzf* :tnoremap <buffer> <esc> <c-q>
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
nnoremap yl 0y$
nnoremap <Leader>tr :set relativenumber!<CR>
nnoremap <Leader>tw :set nowrap!<CR>
nnoremap <C-b> :BCommits!<CR>
nnoremap <C-l> :BLines!<CR>
nnoremap <C-j> <plug>(signify-next-hunk)
nnoremap <C-k> <plug>(signify-prev-hunk)
:command Gvd :Gvdiffsplit
nmap <Leader>ce v$hcp
