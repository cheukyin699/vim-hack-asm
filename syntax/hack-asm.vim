if version < 700
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Patterns
syn match hackAsmComment        /\/\/.*$/
syn match hackAsmConstants      /-1\|0\|1\|SCREEN\|KBD\|R1[0-5]\|R[0-9]/
syn match hackAsmLabel          /(\k\+)\|@[0-9]\+\|@/
syn match hackAsmOperator       /[\+\-\|\&]/

" Keywords
syn keyword hackAsmIdentifier   A M D AM MD AD AMD null
syn keyword hackAsmJumps        JGT JGE JLT JLE JEQ JNE JMP


" Highlighting and linking
hi def link hackAsmComment      Comment
hi def link hackAsmConstants    Constant
hi def link hackAsmLabel        Label
hi def link hackAsmIdentifier   Identifier
hi def link hackAsmJumps        Function
hi def link hackAsmOperator     Operator
