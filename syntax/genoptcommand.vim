if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword GenOptCommandTopLevelKeyword Vary Parameter OptimizationSettings Algorithm Function
syntax keyword GenOptCommandParameters Name Ini Step Min Max Type Values Function MaxIte WriteStepNumber MaxEqualResults UnitsOfExecution Main
syntax keyword GenOptCommandBool true false

syntax keyword GenOptCommandAlgorithmName GoldenSection Fibonacci

syntax region GenOptCommandComment start="/\*" end="\*/"
syntax region GenOptCommandString start=/"/ end=/"/ skip=/\\"/

syntax match GenOptNumCommandParameter /\v(File|Path|SavePath|Delimiter|FirstCharacterAt)[0-9]+/

" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link GenOptCommandTopLevelKeyword Type
highlight link GenOptNumCommandParameter Keyword
highlight link GenOptCommandBool Boolean
highlight link GenOptCommandComment Comment
highlight link GenOptCommandString String
highlight link GenOptCommandAlgorithmName Type

let b:current_syntax="genoptcommand"
