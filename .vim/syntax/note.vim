"
" NOTE-TAKING SYNTAX HIGHLIGHTING
"

" Title
syn region noteTitle start='--- ' end=' ---' oneline

" Subtitle
syn match noteSubtitle '^.* \~$'

" Code block
syn region noteCode start='```' end='```'

" Bullet point
syn match noteBullet '^ *- '

" Emphasis (Highlight)
syn region noteBold start='\*\*' end='\*\*' oneline

" Colon
syn match noteColon '^.*:'

let b:current_syntax = "note"

hi noteTitle gui=italic
hi noteTitle cterm=italic
hi def link noteCode        Comment
hi def link noteBullet      Identifier
hi def link noteSubtitle    Underlined
hi def link noteColon       Type
hi def link notesBold       Statement

" Possible Groups
" Identifier
" Statement
" Comment
" Type
" PreProc
" Constant
" Special
" Underlined
" Error
