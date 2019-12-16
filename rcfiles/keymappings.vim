" {{ General
nmap <leader>ad :ALEDetail<CR>
" }}

" {{ DENITE SHORTCUTS 

nmap <leader>r :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>df :Denite file/rec -split=floating -winrow=1<CR>
nmap <leader>dg :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nmap <leader>dw :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" }}

" {{ Coc.nvim
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gi <Plug>(coc-implementation)

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
