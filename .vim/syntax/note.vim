"
" NOTE-TAKING SYNTAX HIGHLIGHTING
"

" Title
syn region noteTitle start='---' end='---'

" Subtitle
syn match noteSubtitle '^.*:$'

" Code block
syn region noteCode start='```' end='```'

" Bullet point
syn match noteBullet '^ *- '

" Emphasis (Highlight)
syn region noteBold start='\*\*' end='\*\*' oneline

let b:current_syntax = "note"

hi def link noteTitle       Underlined
hi def link noteCode        Comment
hi def link noteBullet      Constant
hi def link noteSubtitle    Type
hi noteBold gui=italic
hi noteBold cterm=italic
" hi def link noteBold        Special
