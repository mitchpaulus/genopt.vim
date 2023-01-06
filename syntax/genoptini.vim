if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword GenOptIniKeyword Simulation Files Template Input Log Output Configuration CallParameter ObjectiveFunctionLocation Optimization Command

syntax region GenOptIniComment start="/*" end="*/"
syntax region MplotString start=/"/ end=/"/ skip=/\\"/


" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link GenOptIniKeyword Keyword
highlight link GenOptIniComment Comment

let b:current_syntax="genoptini"
