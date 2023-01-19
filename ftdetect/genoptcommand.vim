" See 43.2 'Adding a filetype' of the nvim help
augroup filetypedetect
autocmd BufRead,BufNewFile command.txt set filetype=genoptcommand
augroup END
