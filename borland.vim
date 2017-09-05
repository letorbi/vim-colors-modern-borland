set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set fillchars+=vert:║

let g:colors_name = "borland"

let s:vmode = "gui"
let s:none = "NONE"

if !exists("g:BorlandStyle")
  let g:BorlandStyle = "classic"
endif

if g:BorlandStyle == "modern"
  let s:darkblack = "#000000"
  let s:darkblue = "#004068"
  let s:darkgreen = "#308800"
  let s:darkcyan = "#00a8a8"
  let s:darkred = "#a80000"
  let s:darkmagenta = "#a800a8"
  let s:darkyellow = "#a85700"
  let s:darkwhite = "#a8a8a8"
  let s:darkscroll = "#0038a8"
  let s:lightblack = "#575757"
  let s:lightblue = "#5757ff"
  let s:lightgreen = "#57ff57"
  let s:lightcyan = "#57ffff"
  let s:lightred = "#ff5757"
  let s:lightmagenta = "#ff57ff"
  let s:lightyellow = "#ffff57"
  let s:lightwhite = "#ffffff"
  let s:lightscroll = "#0070a8"
else
  let s:darkblack = "#000000"
  let s:darkblue = "#0000a8"
  let s:darkgreen = "#00a800"
  let s:darkcyan = "#00a8a8"
  let s:darkred = "#a80000"
  let s:darkmagenta = "#a800a8"
  let s:darkyellow = "#a85700"
  let s:darkwhite = "#a8a8a8"
  let s:darkscroll = "#0038a8"
  let s:lightblack = "#575757"
  let s:lightblue = "#5757ff"
  let s:lightgreen = "#57ff57"
  let s:lightcyan = "#57ffff"
  let s:lightred = "#ff5757"
  let s:lightmagenta = "#ff57ff"
  let s:lightyellow = "#ffff57"
  let s:lightwhite = "#ffffff"
  let s:lightscroll = "#0070a8"
endif

let s:italic = ",italic"
let s:bold = ",bold"
let s:underline = ",underline"
let s:undercurl = ",undercurl"
let s:reverse = ",reverse"
let s:standout = ",standout"

function! s:setGroup(name, foreground, background, style)
  exe "hi! ".a:name." ".s:vmode."fg=".a:foreground." ".s:vmode."bg=".a:background." ".s:vmode."=".a:style
endf

function! s:linkGroup(name, parent)
  exe "hi! def link ".a:name." ".a:parent
endf

" INFO Vim default highlight groups

" ColorColumn   used for the columns set with 'colorcolumn'
" Conceal       placeholder characters substituted for concealed text (see 'conceallevel')
" Cursor        the character under the cursor (default: normal colours reversed)
" CursorIM      like Cursor, but used when in IME mode |CursorIM|
" CursorColumn  the screen column that the cursor is in when 'cursorcolumn' is set
" CursorLine    the screen line that the cursor is in when 'cursorline' is set
call s:setGroup("CursorLine", s:darkblue, s:darkcyan, s:none)
" Directory     directory names (and other special names in listings)
call s:linkGroup("Directory", "Normal")
" DiffAdd       diff mode: Added line |diff.txt|
" DiffChange    diff mode: Changed line |diff.txt|
" DiffDelete    diff mode: Deleted line |diff.txt|
" DiffText      diff mode: Changed text within a changed line |diff.txt|
" EndOfBuffer   filler lines (~) after the last line in the buffer.  By default, this is highlighted like |hl-NonText|.
" ErrorMsg      error messages on the command line
call s:setGroup("ErrorMsg", s:lightyellow, s:darkred, s:none)
" VertSplit     the column separating vertically split windows
" Folded        line used for closed folds
" FoldColumn    'foldcolumn'
" SignColumn    column where |signs| are displayed
" IncSearch     'incsearch' highlighting; also used for the text replaced with ":s///c"
" LineNr        Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
call s:linkGroup("LineNr", "NonText")
" CursorLineNr  Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
" MatchParen    The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
" ModeMsg       'showmode' message (e.g., "-- INSERT --")
call s:setGroup("ModeMsg", s:lightwhite, s:none, s:none)
" MoreMsg       |more-prompt|
call s:linkGroup("MoreMsg", "ModeMsg")
" NonText       '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
call s:setGroup("NonText", s:darkcyan, s:none, s:none)
" Normal        normal text; any text that matches no syntax pattern
call s:setGroup("Normal", s:lightyellow, s:darkblue, s:none)
" Pmenu         Popup menu: normal item.
call s:setGroup("Pmenu", s:darkblack, s:darkcyan, s:none)
" PmenuSel      Popup menu: selected item.
call s:setGroup("PmenuSel", s:lightwhite, s:darkgreen, s:none)
" PmenuSbar     Popup menu: scrollbar.
call s:setGroup("PmenuSbar", s:darkscroll, s:lightscroll, s:none)
" PmenuThumb    Popup menu: Thumb of the scrollbar.
call s:setGroup("PmenuThumb", s:lightscroll, s:darkscroll, s:none)
" Question      |hit-enter| prompt and yes/no questions
" QuickFixLine  Current |quickfix| item in the quickfix window.
" Search        Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
" SpecialKey    Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'.  Generally: text that is displayed differently from what it really is.
" SpellBad      Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
" SpellCap      Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
" SpellLocal    Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.
" SpellRare     Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.
" StatusLine    status line of current window
call s:setGroup("StatusLine", s:darkblack, s:darkgreen, s:none)
" StatusLineNC  status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
call s:setGroup("StatusLineNC", s:darkblack, s:darkwhite, s:none)
" TabLine       tab pages line, not active tab page label
call s:linkGroup("TabLine", "StatusLineNC")
" TabLineFill   tab pages line, where there are no labels
call s:linkGroup("TabLineFill", "TabLine")
" TabLineSel    tab pages line, active tab page label
call s:linkGroup("TabLineSel", "StatusLine")
" Title         titles for output from ":set all", ":autocmd" etc; Affects the window counter per tab
call s:linkGroup("Title", "Normal")
" Visual        Visual mode selection
call s:setGroup("Visual", s:darkblue, s:darkwhite, s:none)
" VisualNOS     Visual mode selection when vim is "Not Owning the Selection".  Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
" WarningMsg    warning messages
call s:setGroup("WarningMsg", s:lightyellow, s:darkyellow, s:none)
" WildMenu      current match in 'wildmenu' completion

" INFO Interface related highlight groups

call s:setGroup("VertSplit", s:lightwhite, s:none, s:none)
" CIf0            TODO what does this mean 

" INFO Group descriptions from solarized

" Boolean         a boolean constant: TRUE, false
" Comment         any comment
call s:setGroup("Comment", s:darkwhite, s:none, s:none)
" Conditional     if, then, else, endif, switch, etc.
" Constant        any constant
call s:linkGroup("Constant", "Normal")
" Character       a character constant: 'c', '\n'
" Debug           debugging statements
" Define          preprocessor #define
" Delimiter       character that needs attention
" Error           any erroneous construct
call s:linkGroup("Error", "Normal")
" Exception       try, catch, throw
" Float           a floating point constant: 2.3e10
" Function        function name (also: methods for classes)
" Identifier      any variable name
call s:linkGroup("Identifier", "Normal")
" Ignore          left blank, hidden  |hl-Ignore|
call s:linkGroup("Ignore", "Normal")
" Include         preprocessor #include
" Keyword         any other keyword
" Label           case, default, etc.
" Macro           same as Define
" Number          a number constant: 234, 0xff
" Operator        "sizeof", "+", "*", etc.
" PreCondit       preprocessor #if, #else, #endif, etc.
" PreProc         generic Preprocessor
call s:setGroup("PreProc", s:lightgreen, s:none, s:none)
" Repeat          for, do, while, etc.
" Special         any special symbol
call s:linkGroup("Special", "Normal")
" SpecialChar     special character in a constant
" SpecialComment  special things inside a comment
" Statement       any statement
call s:setGroup("Statement", s:lightwhite, s:none, s:none)
" StorageClass    static, register, volatile, etc.
" String          a string constant: "this is a string"
" Structure       struct, union, enum, etc.
" Tag             you can use CTRL-] on this
" Todo            anything that needs extra attention; mostly the keywords TODO FIXME and XXX
call s:setGroup("Todo", s:lightwhite, s:none, s:none)
" Type            int, long, char, etc.
call s:linkGroup("Type", "Normal")
" Typedef         A typedef
" Underlined      text that stands out, HTML links
call s:linkGroup("Underlined", "Normal")

" INFO NERDTree colors

call s:setGroup("NERDTreeDir", s:lightcyan, s:darkblue, s:none)
call s:linkGroup("NERDTreePart", "NERDTreeDir")
call s:linkGroup("NERDTreePartFile", "NERDTreeDir")
call s:linkGroup("NERDTreeExecFile", "NERDTreeDir")
call s:linkGroup("NERDTreeDirSlash", "NERDTreeDir")
call s:linkGroup("NERDTreeBookmarksHeader", "NERDTreeDir")
call s:linkGroup("NERDTreeBookmarksLeader", "NERDTreeDir")
call s:linkGroup("NERDTreeBookmarkName", "NERDTreeDir")
call s:linkGroup("NERDTreeBookmark", "NERDTreeDir")
call s:linkGroup("NERDTreeToggleOn", "NERDTreeDir")
call s:linkGroup("NERDTreeToggleOff", "NERDTreeDir")
call s:linkGroup("NERDTreeLinkTarget", "NERDTreeDir")
call s:linkGroup("NERDTreeLinkFile", "NERDTreeDir")
call s:linkGroup("NERDTreeLinkDir", "NERDTreeDir")
call s:linkGroup("NERDTreeDir", "NERDTreeDir")
call s:linkGroup("NERDTreeUp", "NERDTreeDir")
call s:linkGroup("NERDTreeFile", "NERDTreeDir")
call s:linkGroup("NERDTreeCWD", "NERDTreeDir")
call s:linkGroup("NERDTreeOpenable", "NERDTreeDir")
call s:linkGroup("NERDTreeCloseable", "NERDTreeDir")
call s:linkGroup("NERDTreeIgnore", "NERDTreeDir")
call s:linkGroup("NERDTreeRO", "NERDTreeDir")
call s:linkGroup("NERDTreeFlags", "NERDTreeDir")
call s:linkGroup("NERDTreeCurrentNode", "NERDTreeDir")

call s:setGroup("NERDTreeHelp", s:lightyellow, s:darkblue, s:none)
call s:linkGroup("NERDTreeHelpKey", "NERDTreeHelp")
call s:linkGroup("NERDTreeHelpCommand", "NERDTreeHelp")
call s:linkGroup("NERDTreeHelpTitle", "NERDTreeHelp")
