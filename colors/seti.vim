set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="seti"

hi Normal guifg=#d7d7d7 guibg=#0d1011 gui=NONE
hi Comment guifg=#677a83 guibg=#0d1011 gui=NONE
hi CursorLine guibg=#333333 gui=NONE
hi Visual guibg=#444444 gui=NONE
hi Cursor guibg=#FF8801 gui=NONE
hi String guifg=#e6db74 gui=NONE
hi Number guifg=#ae81ff gui=NONE
hi Function guifg=#A6E22E gui=NONE
hi Keyword guifg=#F92672 gui=NONE
hi Statement guifg=#F92672 gui=NONE
hi Type guifg=#66d9ef gui=NONE
hi NonText guibg=#0d1011 guifg=#0d1011 gui=NONE
hi Constant guifg=#ae81ff gui=NONE
hi Title guifg=#a6e22e gui=bold

hi link VisualNOS Visual
hi link Float Number
hi link Boolean Constant
hi link Operator Keyword
hi link Identifier Normal
hi link Define Keyword

hi DiffAdd guibg=#0d3011
hi DiffChange guibg=#3d3311
hi DiffDelete guibg=#2d1011

" ColorColumn " used for the columns set with 'colorcolumn'
" Conceal " placeholder characters substituted for concealed
" Cursor " the character under the cursor
" CursorIM " like Cursor, but used when in IME mode |CursorIM|
" CursorColumn " the screen column that the cursor is in when 'cursorcolumn' is
" Directory " directory names (and other special names in listings)
"hi DiffText " diff mode: Changed text within a changed line |diff.txt|
" EndOfBuffer " filler lines (~) after the last line in the buffer.
" ErrorMsg " error messages on the command line
hi VertSplit guifg=#677a83 guibg=#0d1011 gui=NONE
" Folded " line used for closed folds
" FoldColumn " 'foldcolumn'
" SignColumn " column where |signs| are displayed
" IncSearch " 'incsearch' highlighting; also used for the text replaced with
" LineNr " Line number for ":number" and ":#" commands, and when 'number'
" CursorLineNr " Like LineNr when 'cursorline' or 'relativenumber' is set for
" MatchParen " The character under the cursor or just before it, if it
" ModeMsg " 'showmode' message (e.g., "-- INSERT --")
" MoreMsg " |more-prompt|
" Pmenu " Popup menu: normal item.
" PmenuSel " Popup menu: selected item.
" PmenuSbar " Popup menu: scrollbar.
" PmenuThumb " Popup menu: Thumb of the scrollbar.
" Question " |hit-enter| prompt and yes/no questions
" Search " Last search pattern highlighting (see 'hlsearch').
" SpecialKey " Meta and special keys listed with ":map", also for text used
" SpellBad " Word that is not recognized by the spellchecker. |spell|
" SpellCap " Word that should start with a capital. |spell|
" SpellLocal " Word that is recognized by the spellchecker as one that is
" SpellRare " Word that is recognized by the spellchecker as one that is
" StatusLine " status line of current window
" StatusLineNC " status lines of not-current windows
" TabLine " tab pages line, not active tab page label
" TabLineFill " tab pages line, where there are no labels
" TabLineSel " tab pages line, active tab page label
" Title " titles for output from ":set all", ":autocmd" etc.
" WarningMsg " warning messages
" WildMenu " current match in 'wildmenu' completion
