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
let g:colors_name="PaperColorSlim"

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

highlight ColorColumn    guifg=none         guibg=#303030  gui=none
highlight Conceal        guifg=#585858      guibg=#1c1c1c  gui=none
highlight Cursor         guifg=#c6c6c6      guibg=#1c1c1c  gui=none
highlight CursorColumn   guifg=none         guibg=#303030  gui=none
highlight Normal         guifg=#d0d0d0      guibg=#1c1c1c  gui=none
highlight CursorLine     guifg=none         guibg=#303030  gui=none
highlight Directory      guifg=#00afaf      guibg=none     gui=none
highlight DiffAdd        guifg=#87d700      guibg=#005f00  gui=none
highlight DiffChange     guifg=#d0d0d0      guibg=#005f5f  gui=none
highlight DiffDelete     guifg=#af005f      guibg=#5f0000  gui=none
highlight DiffText       guifg=#5fffff      guibg=#008787  gui=none
highlight EndOfBuffer    guifg=#1c1c1c      guibg=none     gui=none
highlight VertSplit      guifg=#5f8787      guibg=#1c1c1c  gui=none
highlight Folded         guifg=#d787ff      guibg=#5f005f  gui=none
highlight FoldColumn     guifg=#d787ff      guibg=#1c1c1c  gui=none
highlight SignColumn     guifg=#d7af00      guibg=#1c1c1c  gui=none
highlight LineNr         guifg=#585858      guibg=#1c1c1c  gui=none
highlight CursorLineNr   guifg=#ffff00      guibg=#1c1c1c  gui=none
highlight MatchParen     guifg=#c6c6c6      guibg=#4e4e4e  gui=none
highlight ModeMsg        guifg=#d7af5f      guibg=none     gui=none
highlight MoreMsg        guifg=#d7af5f      guibg=none     gui=none
highlight NonText        guifg=#585858      guibg=#1c1c1c  gui=none
highlight Question       guifg=#d7af5f      guibg=none     gui=none
highlight Search         guifg=#000000      guibg=#00875f  gui=none
highlight SpecialKey     guifg=#585858      guibg=none     gui=none
highlight SpellBad       guifg=red1         guibg=none     gui=underline,italic
highlight SpellCap       guifg=yellow       guibg=none     gui=underline,italic
highlight SpellLocal     guifg=magenta      guibg=none     gui=underline,italic
highlight SpellRare      guifg=ForestGreen  guibg=none     gui=underline,italic
highlight StatusLine     guifg=#1c1c1c      guibg=#5f8787  gui=none
highlight StatusLineNC   guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight TabLine        guifg=#bcbcbc      guibg=#585858  gui=none
highlight TabLineFill    guifg=#262626      guibg=#262626  gui=none
highlight TabLineSel     guifg=#121212      guibg=#00afaf  gui=none
highlight Title          guifg=#5fafd7      guibg=none     gui=bold
highlight Visual         guifg=#000000      guibg=#8787af  gui=none
highlight WarningMsg     guifg=#afd700      guibg=none     gui=none
highlight WildMenu       guifg=#1c1c1c      guibg=#afd700  gui=none

highlight NormalFloat    guifg=#c6c6c6      guibg=#303030  gui=none
highlight Pmenu          guifg=#c6c6c6      guibg=#303030  gui=none
highlight PmenuSel       guifg=#bcbcbc      guibg=#585858  gui=none

highlight Comment        guifg=#808080      guibg=none     gui=italic
highlight Constant       guifg=#ff5faf      guibg=none     gui=none
highlight String         guifg=#d7af5f      guibg=none     gui=none
highlight Character      guifg=#d7af5f      guibg=none     gui=none
highlight Number         guifg=#ff5faf      guibg=none     gui=none
highlight Boolean        guifg=#ff5faf      guibg=none     gui=bold
highlight Float          guifg=#ff5faf      guibg=none     gui=none
highlight Identifier     guifg=#d7875f      guibg=none     gui=none
highlight Function       guifg=#5fafd7      guibg=none     gui=none
highlight Statement      guifg=#afd700      guibg=none     gui=none
highlight Conditional    guifg=#af87d7      guibg=none     gui=bold
highlight Repeat         guifg=#af87d7      guibg=none     gui=bold
highlight Label          guifg=#00afaf      guibg=none     gui=none
highlight Operator       guifg=#5fafd7      guibg=none     gui=none
highlight Keyword        guifg=#00afaf      guibg=none     gui=none
highlight Exception      guifg=#5faf5f      guibg=none     gui=none
highlight PreProc        guifg=#00afaf      guibg=none     gui=none
highlight Include        guifg=#5faf5f      guibg=none     gui=none
highlight Define         guifg=#00afaf      guibg=none     gui=none
highlight Macro          guifg=#00afaf      guibg=none     gui=none
highlight PreCondit      guifg=#5fafd7      guibg=none     gui=none
highlight Type           guifg=#afd700      guibg=none     gui=bold
highlight StorageClass   guifg=#d7875f      guibg=none     gui=bold
highlight Structure      guifg=#00afaf      guibg=none     gui=bold
highlight Typedef        guifg=#afd700      guibg=none     gui=bold
highlight Special        guifg=#5faf5f      guibg=none     gui=none
highlight SpecialChar    guifg=#d0d0d0      guibg=none     gui=none
highlight Tag            guifg=#d7af00      guibg=none     gui=none
highlight Delimiter      guifg=#5fafd7      guibg=none     gui=none
highlight SpecialComment guifg=#808080      guibg=none     gui=bold
highlight Debug          guifg=#ff5faf      guibg=none     gui=none
highlight Underlined     guifg=#ff5faf      guibg=none     gui=none
highlight Error          guifg=#af0000      guibg=#ffd7ff  gui=none
highlight Todo           guifg=#00af5f      guibg=#eeeeee  gui=bold

" Python:
highlight pythonFunction guifg=#5fafd7      guibg=none     gui=bold

" NA Underlined
" NA Ignore

" NA highlight lCursor
" NA highlight CursorIM
" NA highlight TermCursor
" NA highlight TermCursorNC
" NA highlight ErrorMsg
" NA highlight IncSearch
" NA highlight Substitute
" NA highlight MsgArea
" NA highlight MsgSeparator
" NA highlight NormalNC
" NA highlight PmenuSbar
" NA highlight PmenuThumb
" NA highlight QuickFixLine
" NA highlight VisualNOS
" NA highlight Whitespace
" NA highlight Menu
" NA highlight Scrollbar
" NA highlight Tooltip
