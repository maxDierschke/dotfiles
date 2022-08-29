let g:vimspector_enable_mapping = 'HUMAN'

nmap <leader>dd :call vimspector#Launch()<CR>
"autocmd FileType java nmap <leader>dd :CocCommand java.debug.vimspector.start<CR>

nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval<CR>
nmap <leader>dw :VimspectorWatch<CR>
nmap <leader>do :VimspectorShowOutput<CR>

