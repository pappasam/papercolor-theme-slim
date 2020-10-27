" PaperColorSlim: Based on <https://github.com/NLKNguyen/papercolor-theme>
" Maintainer:   Samuel Roeca <samuel.roeca@gmail.com>

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlim"

" Standard: built-in
" TODO highlight lCursor
" TODO highlight CursorIM
" TODO highlight TermCursor
" TODO highlight TermCursorNC
" TODO highlight IncSearch
" TODO highlight Substitute
" TODO highlight MsgArea
" TODO highlight MsgSeparator
" TODO highlight PmenuSbar
" TODO highlight PmenuThumb
" TODO highlight QuickFixLine
" TODO highlight VisualNOS
" TODO highlight Whitespace
" TODO highlight Menu
" TODO highlight Scrollbar
" TODO highlight Tooltip

highlight ColorColumn         guifg=none         guibg=#303030  gui=none
highlight Conceal             guifg=#585858      guibg=#1c1c1c  gui=none
highlight Cursor              guifg=#c6c6c6      guibg=#1c1c1c  gui=none
highlight CursorColumn        guifg=none         guibg=#303030  gui=none
highlight Normal              guifg=#d0d0d0      guibg=#1c1c1c  gui=none
highlight NormalNC            guifg=#d0d0d0      guibg=#1c1c1c  gui=none
highlight CursorLine          guifg=none         guibg=#303030  gui=none
highlight Directory           guifg=#00afaf      guibg=none     gui=none
highlight DiffAdd             guifg=#87d700      guibg=#005f00  gui=none
highlight DiffChange          guifg=#d0d0d0      guibg=#005f5f  gui=none
highlight DiffDelete          guifg=#af005f      guibg=#5f0000  gui=none
highlight DiffText            guifg=#5fffff      guibg=#008787  gui=none
highlight EndOfBuffer         guifg=#1c1c1c      guibg=none     gui=none
highlight VertSplit           guifg=#5f8787      guibg=#1c1c1c  gui=none
highlight Folded              guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight FoldColumn          guifg=#d787ff      guibg=#1c1c1c  gui=none
highlight SignColumn          guifg=#d7af00      guibg=#1c1c1c  gui=none
highlight LineNr              guifg=#585858      guibg=#1c1c1c  gui=none
highlight CursorLineNr        guifg=#ffff00      guibg=#1c1c1c  gui=none
highlight MatchParen          guifg=#c6c6c6      guibg=#4e4e4e  gui=none
highlight ModeMsg             guifg=#d7af5f      guibg=none     gui=none
highlight MoreMsg             guifg=#d7af5f      guibg=none     gui=none
highlight NonText             guifg=#585858      guibg=#1c1c1c  gui=none
highlight Question            guifg=#d7af5f      guibg=none     gui=none
highlight Search              guifg=#000000      guibg=#00875f  gui=none
highlight SpecialKey          guifg=#585858      guibg=none     gui=none
highlight SpellBad            guifg=#af005f      guibg=#5f0000  gui=underline,italic
highlight SpellCap            guifg=#ffff00      guibg=none     gui=underline,italic
highlight SpellLocal          guifg=#ff5faf      guibg=none     gui=underline,italic
highlight SpellRare           guifg=#5faf5f      guibg=none     gui=underline,italic
highlight StatusLine          guifg=#1c1c1c      guibg=#5f8787  gui=none
highlight StatusLineNC        guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight TabLine             guifg=#bcbcbc      guibg=#585858  gui=none
highlight TabLineFill         guifg=#262626      guibg=#262626  gui=none
highlight TabLineSel          guifg=#121212      guibg=#00afaf  gui=none
highlight Title               guifg=#5fafd7      guibg=none     gui=bold
highlight Visual              guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight WarningMsg          guifg=#afd700      guibg=none     gui=none
highlight WildMenu            guifg=#1c1c1c      guibg=#afd700  gui=none

highlight NormalFloat         guifg=#c6c6c6      guibg=#303030  gui=none
highlight Pmenu               guifg=#c6c6c6      guibg=#303030  gui=none
highlight PmenuSel            guifg=#bcbcbc      guibg=#585858  gui=none
highlight ErrorMsg            guifg=#af005f      guibg=#5f0000  gui=none

" Standard: Vim-preferred names
" TODO highlight Underlined

highlight Comment             guifg=#808080      guibg=none     gui=italic
highlight Constant            guifg=#ff5faf      guibg=none     gui=none
highlight String              guifg=#d7af5f      guibg=none     gui=none
highlight Character           guifg=#d7af5f      guibg=none     gui=none
highlight Number              guifg=#ff5faf      guibg=none     gui=none
highlight Boolean             guifg=#ff5faf      guibg=none     gui=bold
highlight Float               guifg=#ff5faf      guibg=none     gui=none
highlight Identifier          guifg=#d7875f      guibg=none     gui=none
highlight Function            guifg=#5fafd7      guibg=none     gui=none
highlight Statement           guifg=#afd700      guibg=none     gui=none
highlight Conditional         guifg=#af87d7      guibg=none     gui=bold
highlight Repeat              guifg=#af87d7      guibg=none     gui=bold
highlight Label               guifg=#00afaf      guibg=none     gui=none
highlight Operator            guifg=#5fafd7      guibg=none     gui=none
highlight Keyword             guifg=#00afaf      guibg=none     gui=none
highlight Exception           guifg=#5faf5f      guibg=none     gui=none
highlight PreProc             guifg=#00afaf      guibg=none     gui=none
highlight Include             guifg=#5faf5f      guibg=none     gui=none
highlight Define              guifg=#00afaf      guibg=none     gui=none
highlight Macro               guifg=#00afaf      guibg=none     gui=none
highlight PreCondit           guifg=#5fafd7      guibg=none     gui=none
highlight Type                guifg=#afd700      guibg=none     gui=bold
highlight StorageClass        guifg=#d7875f      guibg=none     gui=bold
highlight Structure           guifg=#00afaf      guibg=none     gui=bold
highlight Typedef             guifg=#afd700      guibg=none     gui=bold
highlight Special             guifg=#5faf5f      guibg=none     gui=none
highlight SpecialChar         guifg=#d0d0d0      guibg=none     gui=none
highlight Tag                 guifg=#d7af00      guibg=none     gui=none
highlight Delimiter           guifg=#5fafd7      guibg=none     gui=none
highlight SpecialComment      guifg=#808080      guibg=none     gui=bold
highlight Debug               guifg=#ff5faf      guibg=none     gui=none
highlight Underlined          guifg=#ff5faf      guibg=none     gui=none
highlight Error               guifg=#af005f      guibg=#5f0000  gui=none
highlight Todo                guifg=#00af5f      guibg=none     gui=bold
highlight Ignore              guifg=#303030      guibg=#1c1c1c  gui=none

" Standard: Neovim treesitter
" <https://github.com/nvim-treesitter/nvim-treesitter/blob/c3b526fe51d6f4dd1dda099d69258909d0abb531/doc/nvim-treesitter.txt#L398>

" TODO highlight TSError
" TODO highlight TSPunctDelimiter
" TODO highlight TSPunctBracket
" TODO highlight TSPunctSpecial
" TODO highlight TSConstant
" TODO highlight TSConstBuiltin
" TODO highlight TSConstMacro
" TODO highlight TSString
" TODO highlight TSStringRegex
" TODO highlight TSStringEscape
" TODO highlight TSCharacter
" TODO highlight TSNumber
" TODO highlight TSBoolean
" TODO highlight TSFloat
" TODO highlight TSFunction
" TODO highlight TSFuncBuiltin
" TODO highlight TSFuncMacro
" TODO highlight TSParameter
" TODO highlight TSParameterReference
" TODO highlight TSMethod
" TODO highlight TSField
" TODO highlight TSProperty
" TODO highlight TSConstructor
" TODO highlight TSConditional
" TODO highlight TSRepeat
" TODO highlight TSLabel
" TODO highlight TSOperator
" TODO highlight TSKeyword
" TODO highlight TSKeywordFunction
" TODO highlight TSException
" TODO highlight TSType
" TODO highlight TSTypeBuiltin
" TODO highlight TSNamespace
" TODO highlight TSInclude
" TODO highlight TSAnnotation
" TODO highlight TSText
" TODO highlight TSStrong
" TODO highlight TSEmphasis
" TODO highlight TSUnderline
" TODO highlight TSTitle
" TODO highlight TSLiteral
" TODO highlight TSURI
" TODO highlight TSVariable
" TODO highlight TSVariableBuiltin

" Non Standard: language-specific overrides
" Note: keep these to an absolute minimum

highlight QuickScopePrimary   guifg=#afd700      guibg=none     gui=underline
highlight QuickScopeSecondary guifg=#00afaf      guibg=none     gui=underline
highlight helpBacktick        guifg=#5fafd7      guibg=none     gui=none
highlight helpIgnore          guifg=#5fafd7      guibg=none     gui=none
highlight helpStar            guifg=#5fafd7      guibg=none     gui=none
highlight pythonFunction      guifg=#5fafd7      guibg=none     gui=bold
