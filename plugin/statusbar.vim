function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Add git  branch to status bar
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#IncSearch#
set statusline+=%{StatuslineGit()}
set statusline+=%#TermCursor#
set statusline+=\ %f


