" A basic set up for LanguageClient-Neovim

" <LSP> {{{

" If you don't want it to turn on automatically
"
" let g:LanguageClient_autoStart = 0

" let g:LanguageClient_autoStart = 1
" nnoremap <leader>lcs :LanguageClientStart<CR>

" let g:LanguageClient_serverCommands = {
"   \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"   \ 'javascript': ['/Users/matthagner/n/bin/javascript-typescript-stdio'],
"   \ 'reason': ['~/code/reason-language-server.exe'],
"   \ }

" noremap <leader>hov :call LanguageClient_textDocument_hover()<CR>
" noremap <leader>def :call LanguageClient_textDocument_definition()<CR>
" noremap <leader>re :call LanguageClient_textDocument_rename()<CR>
" noremap <leader>sym :call LanguageClient_textDocument_documentSymbol()<CR>

" }}}
