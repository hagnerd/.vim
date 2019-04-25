 "let g:ale_reason_ols_executable = 'ocaml-language-server'
 "let g:ale_reasonml_refmt_executable = 'refmt'
 "let g:ale_reasonml_refmt_options = ''

 "function! s:refmt_fix(buffer) abort
 "  let ext = expand('#' . a:buffer . ':e')
 "  if ext ==# 'rei'
 "    return { 'command': 'refmt --interface true' }
 "  else
 "    return { 'command': 'refmt' }
 "  endif
 "endfunction


"let g:ale_linters.reason

""  \ 'reason': [ function('s:refmt_fix') ],
""
""
