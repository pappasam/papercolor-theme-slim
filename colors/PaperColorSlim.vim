" Theme: PaperColor
" Author: Nikyle Nguyen <NLKNguyen@MSN.com>
" License: MIT
" Source: http://github.com/NLKNguyen/papercolor-theme

" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:
" URL:

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="papercolor"

" OR

" highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w
" :so %
"
" Then to see what the current setting is use the highlight command.
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg

" Uncomment and complete the commands you want to change from the default.
let s:dark = {
  \ 'ColorColumn': '#303030',
  \ 'Conceal': '#585858',
  \ 'Cursor': '#1c1c1c',
  \ 'CursorColumn': '#303030',
  \ 'Normal': 'LightGray',
  \ }

for [key, value] in items(s:dark)
  execute 'highlight ' . key . ' guifg=' . value
endfor

" highlight ColorColumn
" highlight Conceal
" highlight Cursor
" highlight CursorColumn
" highlight Normal
" highlight lCursor
" highlight CursorIM
" highlight CursorLine
" highlight Directory
" highlight DiffAdd
" highlight DiffChange
" highlight DiffDelete
" highlight DiffText
" highlight EndOfBuffer
" highlight TermCursor
" highlight TermCursorNC
" highlight ErrorMsg
" highlight VertSplit
" highlight Folded
" highlight FoldColumn
" highlight SignColumn
" highlight IncSearch
" highlight Substitute
" highlight LineNr
" highlight CursorLineNr
" highlight MatchParen
" highlight ModeMsg
" highlight MsgArea
" highlight MsgSeparator
" highlight MoreMsg
" highlight NonText
" highlight NormalFloat
" highlight NormalNC
" highlight Pmenu
" highlight PmenuSel
" highlight PmenuSbar
" highlight PmenuThumb
" highlight Question
" highlight QuickFixLine
" highlight Search
" highlight SpecialKey
" highlight SpellBad
" highlight SpellCap
" highlight SpellLocal
" highlight SpellRare
" highlight StatusLine
" highlight StatusLineNC
" highlight TabLine
" highlight TabLineFill
" highlight TabLineSel
" highlight Title
" highlight Visual
" highlight VisualNOS
" highlight WarningMsg
" highlight Whitespace
" highlight WildMenu
" highlight Menu
" highlight Scrollbar
" highlight Tooltip
