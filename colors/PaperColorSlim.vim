" PaperColorSlim: Based on <https://github.com/NLKNguyen/papercolor-theme>
" Maintainer:   Samuel Roeca <samuel.roeca@gmail.com>

" Color Pallet:
" dark     light
" #000000  #444444
" #005f00  #afff87
" #005f5f  #ffd787
" #00875f  #ffff5f
" #008787  #ffffd7
" #00afaf  #e4e4e4
" #121212  #444444
" #1c1c1c  #eeeeee
" #262626  #005f87
" #303030  #e4e4e4
" #3a3a3a  #d0d0d0
" #4e4e4e  #c6c6c6
" #585858  #bcbcbc
" #5f0000  #ffd7ff
" #5f8787  #005f87
" #5faf5f  #d70000
" #5fafd7  #0087af
" #5fffff  #0087af
" #808080  #878787
" #87d700  #008700
" #af005f  #af0000
" #af87d7  #8700af
" #afd700  #d70087
" #bcbcbc  #444444
" #c6c6c6  #005f87
" #d0d0d0  #444444
" #d7875f  #005f87
" #d787ff  #0087af
" #d7af00  #008700
" #d7af5f  #5f8700
" #ff5faf  #d75f00
" #ff8700  #00af5f
" #ffff00  #af5f00

" Groups For Reference:
" Standard: built-in
" TODO lCursor
" TODO CursorIM
" TODO TermCursor
" TODO TermCursorNC
" TODO IncSearch
" TODO Substitute
" TODO MsgArea
" TODO MsgSeparator
" TODO PmenuSbar
" TODO PmenuThumb
" TODO QuickFixLine
" TODO VisualNOS
" TODO Whitespace
" TODO Menu
" TODO Scrollbar
" TODO Tooltip
" Neovim Treesitter: all values
" TSError
" TSPunctDelimiter
" TSPunctBracket
" TSPunctSpecial
" TSConstant
" TSConstBuiltin
" TSConstMacro
" TSString
" TSStringRegex
" TSStringEscape
" TSCharacter
" TSNumber
" TSInclude
" TSBoolean
" TSConstBuiltin
" TSFloat
" TSFunction
" TSFuncBuiltin
" TSFuncMacro
" TSParameter
" TSParameterReference
" TSFuncMacro
" TSField
" TSProperty
" TSConstructor
" TSConditional
" TSRepeat
" TSLabel
" TSOperator
" TSKeyword
" TSKeywordFunction
" TSException
" TSType
" TSTypeBuiltin
" TSNamespace
" TSInclude
" TSAnnotation
" TSText
" TSStrong
" TSEmphasis
" TSUnderline
" TSTitle
" TSLiteral
" TSURI
" TSVariable

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlim"

" Standard: built-in

highlight ColorColumn         guifg=none         guibg=#303030  gui=none
highlight Conceal             guifg=#585858      guibg=#1c1c1c  gui=none
highlight Cursor              guifg=#c6c6c6      guibg=#1c1c1c  gui=none
highlight CursorColumn        guifg=none         guibg=#303030  gui=none
highlight CursorLine          guifg=none         guibg=#303030  gui=none
highlight CursorLineNr        guifg=#ffff00      guibg=#1c1c1c  gui=none
highlight DiffAdd             guifg=#87d700      guibg=#005f00  gui=none
highlight DiffChange          guifg=#d0d0d0      guibg=#005f5f  gui=none
highlight DiffDelete          guifg=#af005f      guibg=#5f0000  gui=none
highlight DiffText            guifg=#5fffff      guibg=#008787  gui=none
highlight Directory           guifg=#00afaf      guibg=none     gui=none
highlight EndOfBuffer         guifg=#1c1c1c      guibg=none     gui=none
highlight ErrorMsg            guifg=#af005f      guibg=#5f0000  gui=none
highlight FoldColumn          guifg=#d787ff      guibg=#1c1c1c  gui=none
highlight Folded              guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight LineNr              guifg=#585858      guibg=#1c1c1c  gui=none
highlight MatchParen          guifg=#c6c6c6      guibg=#4e4e4e  gui=none
highlight ModeMsg             guifg=#d7af5f      guibg=none     gui=none
highlight MoreMsg             guifg=#d7af5f      guibg=none     gui=none
highlight NonText             guifg=#585858      guibg=#1c1c1c  gui=none
highlight Normal              guifg=#d0d0d0      guibg=#1c1c1c  gui=none
highlight NormalFloat         guifg=#c6c6c6      guibg=#303030  gui=none
highlight NormalNC            guifg=#d0d0d0      guibg=#1c1c1c  gui=none
highlight Pmenu               guifg=#c6c6c6      guibg=#303030  gui=none
highlight PmenuSel            guifg=#bcbcbc      guibg=#585858  gui=none
highlight Question            guifg=#d7af5f      guibg=none     gui=none
highlight Search              guifg=#000000      guibg=#00875f  gui=none
highlight SignColumn          guifg=#d7af00      guibg=#1c1c1c  gui=none
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
highlight VertSplit           guifg=#5f8787      guibg=#1c1c1c  gui=none
highlight Visual              guifg=#bcbcbc      guibg=#3a3a3a  gui=none
highlight WarningMsg          guifg=#afd700      guibg=none     gui=none
highlight WildMenu            guifg=#1c1c1c      guibg=#afd700  gui=none

" Standard: Vim-preferred names

highlight Comment             guifg=#808080      guibg=none     gui=italic
highlight Constant            guifg=#d0d0d0      guibg=none     gui=none
highlight String              guifg=#d7af5f      guibg=none     gui=none
highlight Character           guifg=#d7af5f      guibg=none     gui=none
highlight Number              guifg=#ff5faf      guibg=none     gui=none
highlight Boolean             guifg=#d7af00      guibg=none     gui=bold
highlight Float               guifg=#ff5faf      guibg=none     gui=none
highlight Identifier          guifg=#d7875f      guibg=none     gui=none
highlight Function            guifg=#5fafd7      guibg=none     gui=none
highlight Statement           guifg=#afd700      guibg=none     gui=none
highlight Conditional         guifg=#af87d7      guibg=none     gui=bold
highlight Repeat              guifg=#af87d7      guibg=none     gui=bold
highlight Label               guifg=#00afaf      guibg=none     gui=none
highlight Operator            guifg=#00afaf      guibg=none     gui=none
highlight Keyword             guifg=#afd700      guibg=none     gui=none
highlight Exception           guifg=#5faf5f      guibg=none     gui=none
highlight PreProc             guifg=#00afaf      guibg=none     gui=none
highlight Include             guifg=#afd700      guibg=none     gui=none
highlight Define              guifg=#00afaf      guibg=none     gui=none
highlight Macro               guifg=#00afaf      guibg=none     gui=none
highlight PreCondit           guifg=#5fafd7      guibg=none     gui=none
highlight Type                guifg=#af87d7      guibg=none     gui=none
highlight StorageClass        guifg=#d7875f      guibg=none     gui=bold
highlight Structure           guifg=#00afaf      guibg=none     gui=bold
highlight Typedef             guifg=#afd700      guibg=none     gui=bold
highlight Special             guifg=#d7875f      guibg=none     gui=none
highlight SpecialChar         guifg=#d0d0d0      guibg=none     gui=none
highlight Tag                 guifg=#d7af00      guibg=none     gui=none
highlight Delimiter           guifg=#5fafd7      guibg=none     gui=none
highlight SpecialComment      guifg=#808080      guibg=none     gui=bold
highlight Debug               guifg=#ff5faf      guibg=none     gui=none
highlight Underlined          guifg=#ff5faf      guibg=none     gui=none
highlight Error               guifg=#af005f      guibg=#5f0000  gui=none
highlight Todo                guifg=#ff8700      guibg=none     gui=bold
highlight Ignore              guifg=#303030      guibg=#1c1c1c  gui=none

" Standard: Neovim treesitter
" <https://github.com/nvim-treesitter/nvim-treesitter/blob/c3b526fe51d6f4dd1dda099d69258909d0abb531/doc/nvim-treesitter.txt#L398>

highlight TSConstBuiltin      guifg=#d7af00      guibg=none     gui=none
highlight TSConstructor       guifg=#5fafd7      guibg=none     gui=none
highlight TSField             guifg=#d0d0d0      guibg=none     gui=none
highlight TSFuncBuiltin       guifg=#5fafd7      guibg=none     gui=bold
highlight TSMethod            guifg=#5fafd7      guibg=none     gui=none
highlight TSType              guifg=#af87d7      guibg=none     gui=none
highlight TSTypeBuiltin       guifg=#af87d7      guibg=none     gui=bold
highlight TSVariableBuiltin   guifg=#5faf5f      guibg=none     gui=none

" Non Standard: language-specific overrides, keep to absolute minimum

highlight QuickScopePrimary   guifg=#afd700      guibg=none     gui=underline
highlight QuickScopeSecondary guifg=#00afaf      guibg=none     gui=underline
highlight diffAdded           guifg=#5faf5f      guibg=none     gui=none
highlight diffRemoved         guifg=#ff5faf      guibg=none     gui=none
highlight helpBacktick        guifg=#5fafd7      guibg=none     gui=none
highlight helpIgnore          guifg=#5fafd7      guibg=none     gui=none
highlight helpStar            guifg=#5fafd7      guibg=none     gui=none
