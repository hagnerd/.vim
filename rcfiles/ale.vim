let g:ale_linters_aliases = {'vue': ['javascript', 'html', 'scss']}

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'rust': ['rls'],
  \ 'elixir': ['elixir-ls']
  \ }

let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint'],
  \ 'typescriptreact': ['prettier', 'eslint'],
  \ 'typescript': ['prettier', 'eslint'],
  \ 'rust': ['rustfmt'],
  \ }


let g:ale_fix_on_save = 1

nmap <silent> [r <Plug>(ale_previous_wrap)
nmap <silent> ]r <Plug>(ale_next_wrap)

" Linting on all changes felt too agressive. The below settings calls lint on
" certain events, either when I stop interacting, or when entering / leaving
" insert mode

set updatetime=1000
autocmd CursorHold * call ale#Queue(0)
autocmd CursorHoldI * call ale#Queue(0)
autocmd InsertLeave * call ale#Queue(0)
autocmd TextChanged * call ale#Queue(0)
let g:ale_lint_on_text_changed = 0
