" INFO Based on colorscheme blue.vim

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set fillchars+=vert:║

let g:colors_name = "borland"

hi Boolean      guifg=#dca3a3
hi Normal		guifg=#ffff55	guibg=#0000aa
hi Comment		guifg=#aaaaaa					gui=none
hi Constant		guifg=#55ff55
hi Delimiter	guifg=#ffffff
hi Keyword		guifg=#55ffff					gui=none
hi Function		guifg=#ffffff					gui=none
hi Identifier	guifg=#ffff55
hi Statement	guifg=#ffffff					gui=none
hi Preproc		guifg=#55ff55
hi Type			guifg=#ffff55					gui=none
hi Special		guifg=#ffff55
hi Underlined	guifg=#ffff55					gui=underline
hi Label		guifg=#ffff55
hi Operator		guifg=#ffffff					gui=none
hi Title		guifg=#ffff55					gui=none
hi Error		guifg=#ff0000	guibg=#0000aa	gui=underline
hi Todo			guifg=#000000	guibg=#ff5500

hi NonText		guifg=#00aaaa
hi LineNr		guifg=#00aaaa

hi ErrorMsg		guifg=#aa0000
hi WarningMsg	guifg=#ff5500					gui=none
hi ModeMsg		guifg=#ffff55					gui=none
hi MoreMsg		guifg=#ffffff					gui=none

hi Search		guifg=black		guibg=orange
hi IncSearch	guifg=black		guibg=yellow

hi VertSplit	guifg=#ffffff	guibg=#0000aa	gui=none
hi StatusLine	guifg=#ffff55	guibg=#00aaaa	gui=none
hi StatusLineNC	guifg=#000000	guibg=#00aaaa	gui=none
hi PMenu		guifg=#000000	guibg=#00aaaa	gui=none
hi PMenuSel		guifg=#ffff55	guibg=#00aaaa	gui=none
hi PMenuSBar	guifg=#000000	guibg=#005555	gui=none
hi PMenuThumb	guifg=#ffffff	guibg=#000000	gui=none
hi TabLine		guifg=#000000	guibg=#aaaaaa	gui=none
hi TabLineSel	guifg=#aa0000	guibg=#aaaaaa	gui=none
hi TabLineFill	guifg=#000000	guibg=#aaaaaa	gui=none

hi Cursor		guifg=#000000	guibg=#ffff55
hi Visual		guifg=#000000	guibg=#ffffff

hi DiffChange	guifg=black		guibg=darkGreen	
hi DiffText		guifg=black		guibg=olivedrab
hi DiffAdd		guifg=black		guibg=slateblue
hi DiffDelete	guifg=black   	guibg=coral

hi Folded		guibg=#00aaaa		guifg=#000000
hi FoldColumn	guibg=#00aaaa		guifg=#000000
hi CIf0			guifg=gray

" Color names from zenburn
" hi Boolean         guifg=#dca3a3
" hi Character       guifg=#dca3a3 gui=bold
" hi Conditional     guifg=#f0dfaf gui=bold
" hi Debug           guifg=#bca3a3 gui=bold
" hi Define          guifg=#ffcfaf gui=bold
" hi Directory       guifg=#9fafaf gui=bold
" hi Exception       guifg=#c3bf9f gui=bold
" hi Float           guifg=#c0bed1
" hi Function        guifg=#efef8f
" hi Macro           guifg=#ffcfaf gui=bold
" hi Number          guifg=#8cd0d3
" hi Operator        guifg=#f0efd0
" hi PreCondit       guifg=#dfaf8f gui=bold
" hi Question        guifg=#ffffff gui=bold
" hi Repeat          guifg=#ffd7a7 gui=bold
" hi SpecialChar     guifg=#dca3a3 gui=bold
" hi SpecialComment  guifg=#82a282 gui=bold
" hi SpecialKey      guifg=#9ece9e
" hi StorageClass    guifg=#c3bf9f gui=bold
" hi String          guifg=#cc9393
" hi Structure       guifg=#efefaf gui=bold
" hi Tag             guifg=#e89393 gui=bold
" hi Typedef         guifg=#dfe4cf gui=bold
" hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline
" hi WildMenu        guibg=#2c302d guifg=#cbecd0 gui=underline
