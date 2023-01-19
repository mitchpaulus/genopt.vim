if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword GenOptCfgKeyword SimulationError ErrorMessage IO NumberFormat SimulationStart Command WriteInputFileExtension ObjectiveFunctionLocation
syntax keyword GenOptBool true false
syntax keyword GenOptCfgNumberFormat Float Double

syntax region GenOptCfgComment start="/\*" end="\*/"

syntax match GenOptCfgComment2 "\v//.*$"

syntax region GenOptString start=/"/ end=/"/ skip=/\\"/

syntax match GenOptCfgNumParameter /\v(Name|Delimiter|Function)[0-9]+/

" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link GenOptCfgKeyword Keyword
highlight link GenOptCfgNumParameter Keyword
highlight link GenOptBool Boolean
highlight link GenOptCfgNumberFormat Constant
highlight link GenOptCfgComment Comment
highlight link GenOptCfgComment2 Comment
highlight link GenOptString String



let b:current_syntax="genoptcfg"
