" See 43.2 'Adding a filetype' of the nvim help
augroup filetypedetect
autocmd BufRead,BufNewFile opt*.ini set filetype=genoptini
augroup END
