augroup MyAutoCmd

    	" Reload vim config automatically
    autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
		\ source $MYVIMRC | redraw

	autocmd WinEnter,InsertLeave * set cursorline

	autocmd WinLeave,InsertEnter * set nocursorline

    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

	autocmd Syntax * if 5000 < line('$') | syntax sync minlines=200 | endif

    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true

    autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat

    autocmd FileType json syntax match Comment +\/\/.\+$+

    " Go (Google)
    autocmd FileType go let b:coc_pairs_disabled = ['<']

    " set filetypes as typescript && tsx
    autocmd BufNewFile,BufRead *.ts  set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

    " HTML (.gohtml and .tpl for server side)
    autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html
    " Magit
     autocmd User VimagitEnterCommit startinsert

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx setlocal backupcopy=yes
augroup END
