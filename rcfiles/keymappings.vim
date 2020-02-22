" {{ General
nmap <leader>ad :ALEDetail<CR>
nmap <leader>w :w<CR>
" }}

" {{ DENITE SHORTCUTS 

nmap <leader>r :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>df :Denite file/rec -split=floating -winrow=1<CR>
nmap <leader>dg :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nmap <leader>dw :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" }}

" {{ coc.nvim
" nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>cgd <Plug>(coc-definition)
nmap <leader>cgt :call CocAction('jumpDefinition', 'drop tab')

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" }}

" {{ GIT 
nnoremap <leader>gis :Gstatus<CR>
nnoremap <leader>gid :Gdiffsplit<CR>
nnoremap <leader>gic :Gcommit<CR>
nmap <leader>gia :!git add %<CR>

" }}

" Move between wrapped lines, rather than jumping over wrapped segments
nmap j gj
nmap k gk

" Use C-Space to Esc out of any mode
nnoremap <C-Space> <Esc>:noh<CR>
nnoremap <C-Space> <Esc>gV
nnoremap <C-Space> <Esc>
nnoremap <C-Space> <C-c>
nnoremap <C-Space> <Esc>

" Quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sop :source %<cr>

nnoremap <leader>df :Files ~/.dotfiles<cr>

nnoremap <leader>; :

nmap <leader>pi :PlugInstall<cr>

" Swap 0 and ^. It's almost always best to the first non-whitespace character
" and the current mapping makes it harder.
nnoremap 0 ^
nnoremap ^ 0

" Switch between the last two files
nnoremap <leader><leader> <c-^>

nnoremap <leader>fb :Buffers<CR>

" vim:ft=vim
