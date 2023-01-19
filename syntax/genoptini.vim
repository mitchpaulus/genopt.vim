if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword GenOptIniKeyword Simulation Files Template Input Log Output Configuration CallParameter ObjectiveFunctionLocation Optimization Command
syntax keyword GenOptBool true false

syntax region GenOptIniComment start="/\*" end="\*/"
syntax region GenOptString start=/"/ end=/"/ skip=/\\"/

syntax match GenOptNumParameter /\v(File|Path|SavePath|Delimiter|FirstCharacterAt)[0-9]+/

" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link GenOptIniKeyword Keyword
highlight link GenOptNumParameter Keyword
highlight link GenOptBool Boolean
highlight link GenOptIniComment Comment
highlight link GenOptString String

let b:current_syntax="genoptini"
