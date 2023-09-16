" PaperColorSlimnvim -c 'PackagerClean | PackagerUpdate | TSUpdate | CocUpdate' ~/.config/nvim/init.vim: Based on <https://github.com/NLKNguyen/papercolor-theme>
" Maintainer:   Samuel Roeca <samuel.roeca@gmail.com>

" Color Pallet: not exactly 1:1 in practice, but gives a rough gist
"  dark     light  <>  dark     light  <>  dark     light  <>  dark     light
" #d7875f  #005f87 <> #5fafd7  #0087af <> #262626  #005f87 <> #000000  #444444
" #d787ff  #0087af <> #5fffff  #0087af <> #303030  #e4e4e4 <> #005f00  #afff87
" #d7af00  #008700 <> #808080  #878787 <> #3a3a3a  #d0d0d0 <> #005f5f  #ffd787
" #d7af5f  #5f8700 <> #87d700  #008700 <> #4e4e4e  #c6c6c6 <> #00875f  #ffff5f
" #ff5faf  #d75f00 <> #af005f  #af0000 <> #585858  #bcbcbc <> #008787  #ffffd7
" #ff8700  #00af5f <> #af87d7  #8700af <> #5f0000  #ffd7ff <> #00afaf  #e4e4e4
" #ffff00  #af5f00 <> #afd700  #d70087 <> #5f8787  #005f87 <> #121212  #444444
" #bcbcbc  #444444 <> #5faf5f  #d70000 <> #1c1c1c  #fffff0

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlim"

if &background == 'dark'
  " Neovim terminal colors
  let g:terminal_color_0  = '#1c1c1c'
  let g:terminal_color_1  = '#af005f'
  let g:terminal_color_2  = '#5faf00'
  let g:terminal_color_3  = '#d7af5f'
  let g:terminal_color_4  = '#5fafd7'
  let g:terminal_color_5  = '#808080'
  let g:terminal_color_6  = '#d7875f'
  let g:terminal_color_7  = '#d0d0d0'
  let g:terminal_color_8  = '#585858'
  let g:terminal_color_9  = '#5faf5f'
  let g:terminal_color_10 = '#afd700'
  let g:terminal_color_11 = '#af87d7'
  let g:terminal_color_12 = '#ffaf00'
  let g:terminal_color_13 = '#ff5faf'
  let g:terminal_color_14 = '#00afaf'
  let g:terminal_color_15 = '#5f8787'

  " Standard: built-in
  highlight ColorColumn         guifg=none         guibg=#303030  gui=none
  highlight Conceal             guifg=#585858      guibg=none     gui=none
  highlight Cursor              guifg=#c6c6c6      guibg=none     gui=none
  highlight CurSearch           guifg=#87d700      guibg=#005f00  gui=none
  highlight CursorColumn        guifg=none         guibg=#303030  gui=none
  highlight CursorLine          guifg=none         guibg=#303030  gui=none
  highlight CursorLineNr        guifg=#ffff00      guibg=none     gui=none
  highlight DiffAdd             guifg=#87d700      guibg=#005f00  gui=none
  highlight DiffChange          guifg=#d0d0d0      guibg=#005f5f  gui=none
  highlight DiffDelete          guifg=#af005f      guibg=#5f0000  gui=none
  highlight DiffText            guifg=#5fffff      guibg=#008787  gui=none
  highlight Directory           guifg=#00afaf      guibg=none     gui=none
  highlight EndOfBuffer         guifg=#1c1c1c      guibg=none     gui=none
  highlight ErrorMsg            guifg=#af005f      guibg=#5f0000  gui=none
  highlight FoldColumn          guifg=#d787ff      guibg=none     gui=none
  highlight Folded              guifg=#bcbcbc      guibg=#3a3a3a  gui=none
  highlight IncSearch           guifg=#444444      guibg=#e4e4e4  gui=none
  highlight LineNr              guifg=#808080      guibg=none     gui=none
  highlight MatchParen          guifg=#c6c6c6      guibg=#4e4e4e  gui=none
  highlight ModeMsg             guifg=#d7af5f      guibg=none     gui=none
  highlight MoreMsg             guifg=#d7af5f      guibg=none     gui=none
  highlight NonText             guifg=#585858      guibg=none     gui=none
  highlight Normal              guifg=#d0d0d0      guibg=#1c1c1c  gui=none
  highlight NormalFloat         guifg=#c6c6c6      guibg=#303030  gui=none
  highlight NormalNC            guifg=#d0d0d0      guibg=none     gui=none
  highlight Pmenu               guifg=#c6c6c6      guibg=#303030  gui=none
  highlight PmenuSel            guifg=#bcbcbc      guibg=#585858  gui=none
  highlight Question            guifg=#d7af5f      guibg=none     gui=none
  highlight Search              guifg=#444444      guibg=#c6c6c6  gui=none
  highlight SignColumn          guifg=#d7af00      guibg=none     gui=none
  highlight SpecialKey          guifg=#585858      guibg=none     gui=none
  highlight SpellBad            guifg=#e60000      guibg=none     gui=undercurl,italic
  highlight SpellCap            guifg=#ffff00      guibg=none     gui=undercurl,italic
  highlight SpellLocal          guifg=#ff5faf      guibg=none     gui=undercurl,italic
  highlight SpellRare           guifg=#5faf5f      guibg=none     gui=undercurl,italic
  highlight StatusLine          guifg=#1c1c1c      guibg=#5f8787  gui=none
  highlight StatusLineNC        guifg=#bcbcbc      guibg=#3a3a3a  gui=none
  highlight Substitute          guifg=#c6c6c6      guibg=#4e4e4e  gui=none
  highlight TabLine             guifg=#bcbcbc      guibg=#585858  gui=none
  highlight TabLineFill         guifg=#262626      guibg=#262626  gui=none
  highlight TabLineSel          guifg=#121212      guibg=#00afaf  gui=none
  highlight Title               guifg=#5fafd7      guibg=none     gui=bold
  highlight VertSplit           guifg=#5f8787      guibg=none     gui=none
  highlight Visual              guifg=#c6c6c6      guibg=#4e4e4e  gui=none
  highlight VisualNOS           guifg=#c6c6c6      guibg=#4e4e4e  gui=none
  highlight WarningMsg          guifg=#afd700      guibg=none     gui=none
  highlight WildMenu            guifg=#1c1c1c      guibg=#afd700  gui=none

  " Standard: Vim-preferred names
  highlight Comment             guifg=#808080      guibg=none     gui=italic
  highlight Constant            guifg=none         guibg=none     gui=bold
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
  highlight Exception           guifg=#afd700      guibg=none     gui=none
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
  highlight SpecialChar         guifg=#d7af00      guibg=none     gui=none
  highlight Tag                 guifg=#d7af00      guibg=none     gui=none
  highlight Delimiter           guifg=#5fafd7      guibg=none     gui=none
  highlight SpecialComment      guifg=#808080      guibg=none     gui=bold
  highlight Debug               guifg=#ff5faf      guibg=none     gui=none
  highlight Underlined          guifg=none         guibg=none     gui=underline
  highlight Error               guifg=#ff8080      guibg=none     gui=bold
  highlight Todo                guifg=#ff8700      guibg=none     gui=bold
  highlight Ignore              guifg=#303030      guibg=none     gui=none

  " Standard: Neovim treesitter
  if has('nvim-0.8')
    highlight @constant.builtin   guifg=#5faf5f      guibg=none     gui=bold
    highlight @constructor        guifg=#5fafd7      guibg=none     gui=none
    highlight @function           guifg=#5fafd7      guibg=none     gui=none
    highlight @function.builtin   guifg=#5fafd7      guibg=none     gui=bold
    highlight @function.call      guifg=#5fafd7      guibg=none     gui=none
    highlight @method             guifg=#5fafd7      guibg=none     gui=none
    highlight @method.builtin     guifg=#5fafd7      guibg=none     gui=bold
    highlight @method.call        guifg=#5fafd7      guibg=none     gui=none
    highlight @namespace          guifg=#af87d7      guibg=none     gui=bold
    highlight @string.escape      guifg=#d7875f      guibg=none     gui=none
    highlight @tag.attribute      guifg=#d7875f      guibg=none     gui=none
    highlight @tag.delimiter      guifg=#00afaf      guibg=none     gui=none
    highlight @text.emphasis      guifg=none         guibg=none     gui=italic
    highlight @text.literal       guifg=#d7af5f      guibg=none     gui=none
    highlight @text.strong        guifg=none         guibg=none     gui=bold
    highlight @text.title         guifg=#5fafd7      guibg=none     gui=bold
    highlight @text.title.1       guifg=#d7af00      guibg=none     gui=bold
    highlight @text.title.2       guifg=#5fafd7      guibg=none     gui=bold
    highlight @text.title.3       guifg=#af87d7      guibg=none     gui=bold
    highlight @text.title.4       guifg=#ff5faf      guibg=none     gui=bold
    highlight @text.title.5       guifg=#ff5faf      guibg=none     gui=none
    highlight @text.title.6       guifg=#ff5faf      guibg=none     gui=italic
    highlight @type               guifg=#af87d7      guibg=none     gui=none
    highlight @type.builtin       guifg=#af87d7      guibg=none     gui=bold
    highlight @type.definition    guifg=#af87d7      guibg=none     gui=none
    highlight @variable           guifg=#d0d0d0      guibg=none     gui=none
    highlight @variable.builtin   guifg=#5faf5f      guibg=none     gui=bold
  endif

  " Non Standard: language-specific overrides, keep to absolute minimum
  highlight diffAdded           guifg=#5faf5f      guibg=none     gui=none
  highlight diffRemoved         guifg=#ff5faf      guibg=none     gui=none
  highlight helpBacktick        guifg=#5fafd7      guibg=none     gui=none
  highlight helpIgnore          guifg=#5fafd7      guibg=none     gui=none
  highlight helpStar            guifg=#5fafd7      guibg=none     gui=none
else
  " Neovim terminal colors
  let g:terminal_color_0  = '#eeeeee'
  let g:terminal_color_1  = '#af0000'
  let g:terminal_color_2  = '#008700'
  let g:terminal_color_3  = '#5f8700'
  let g:terminal_color_4  = '#0087af'
  let g:terminal_color_5  = '#878787'
  let g:terminal_color_6  = '#005f87'
  let g:terminal_color_7  = '#444444'
  let g:terminal_color_8  = '#bcbcbc'
  let g:terminal_color_9  = '#d70000'
  let g:terminal_color_10 = '#d70087'
  let g:terminal_color_11 = '#8700af'
  let g:terminal_color_12 = '#d75f00'
  let g:terminal_color_13 = '#d75f00'
  let g:terminal_color_14 = '#005faf'
  let g:terminal_color_15 = '#005f87'

  " Standard: built-in
  highlight ColorColumn         guifg=none         guibg=#e4e4e4  gui=none
  highlight Conceal             guifg=#444444      guibg=none     gui=none
  highlight Cursor              guifg=#c6c6c6      guibg=none     gui=none
  highlight CurSearch           guifg=#008700      guibg=#afff87  gui=none
  highlight CursorColumn        guifg=none         guibg=#e4e4e4  gui=none
  highlight CursorLine          guifg=none         guibg=#e4e4e4  gui=none
  highlight CursorLineNr        guifg=#af5f00      guibg=none     gui=none
  highlight DiffAdd             guifg=#008700      guibg=#afff87  gui=none
  highlight DiffChange          guifg=#444444      guibg=#ffd787  gui=none
  highlight DiffDelete          guifg=#af0000      guibg=#ffd7ff  gui=none
  highlight DiffText            guifg=#0087af      guibg=#ffffd7  gui=none
  highlight Directory           guifg=#005f87      guibg=none     gui=none
  highlight EndOfBuffer         guifg=#fffff0      guibg=none     gui=none
  highlight ErrorMsg            guifg=#af0000      guibg=#ffd7ff  gui=none
  highlight FoldColumn          guifg=#0087af      guibg=none     gui=none
  highlight Folded              guifg=#444444      guibg=#e4e4e4  gui=none
  highlight IncSearch           guifg=#4e4e4e      guibg=#c6c6c6  gui=none
  highlight LineNr              guifg=#878787      guibg=none     gui=none
  highlight MatchParen          guifg=#4e4e4e      guibg=#c6c6c6  gui=none
  highlight ModeMsg             guifg=#5f8700      guibg=none     gui=none
  highlight MoreMsg             guifg=#5f8700      guibg=none     gui=none
  highlight NonText             guifg=#444444      guibg=none     gui=none
  highlight Normal              guifg=#444444      guibg=#eeeeee  gui=none
  highlight NormalFloat         guifg=#444444      guibg=#e4e4e4  gui=none
  highlight NormalNC            guifg=#444444      guibg=none     gui=none
  highlight Pmenu               guifg=#444444      guibg=#e4e4e4  gui=none
  highlight PmenuSel            guifg=#e4e4e4      guibg=#444444  gui=none
  highlight Question            guifg=#5f8700      guibg=none     gui=none
  highlight Search              guifg=#444444      guibg=#e4e4e4  gui=none
  highlight SignColumn          guifg=#008700      guibg=none     gui=none
  highlight SpecialKey          guifg=#444444      guibg=none     gui=none
  highlight SpellBad            guifg=#af0000      guibg=#ffd7ff  gui=undercurl,italic
  highlight SpellCap            guifg=#af5f00      guibg=none     gui=undercurl,italic
  highlight SpellLocal          guifg=#d75f00      guibg=none     gui=undercurl,italic
  highlight SpellRare           guifg=#d70000      guibg=none     gui=undercurl,italic
  highlight StatusLine          guifg=#fffff0      guibg=#005f87  gui=none
  highlight StatusLineNC        guifg=#444444      guibg=#c6c6c6  gui=none
  highlight Substitute          guifg=#4e4e4e      guibg=#c6c6c6  gui=none
  highlight TabLine             guifg=#444444      guibg=#c6c6c6  gui=none
  highlight TabLineFill         guifg=#005f87      guibg=#005f87  gui=none
  highlight TabLineSel          guifg=#444444      guibg=#e4e4e4  gui=none
  highlight Title               guifg=#0087af      guibg=none     gui=bold
  highlight VertSplit           guifg=#005f87      guibg=none     gui=none
  highlight Visual              guifg=#4e4e4e      guibg=#c6c6c6  gui=none
  highlight VisualNOS           guifg=#4e4e4e      guibg=#c6c6c6  gui=none
  highlight WarningMsg          guifg=#d70087      guibg=none     gui=none
  highlight WildMenu            guifg=#fffff0      guibg=#d70087  gui=none

  " Standard: Vim-preferred names
  highlight Comment             guifg=#878787      guibg=none     gui=italic
  highlight Constant            guifg=none         guibg=none     gui=bold
  highlight String              guifg=#5f8700      guibg=none     gui=none
  highlight Character           guifg=#5f8700      guibg=none     gui=none
  highlight Number              guifg=#d75f00      guibg=none     gui=none
  highlight Boolean             guifg=#008700      guibg=none     gui=bold
  highlight Float               guifg=#d75f00      guibg=none     gui=none
  highlight Identifier          guifg=#005f87      guibg=none     gui=none
  highlight Function            guifg=#0087af      guibg=none     gui=none
  highlight Statement           guifg=#d70087      guibg=none     gui=none
  highlight Conditional         guifg=#8700af      guibg=none     gui=bold
  highlight Repeat              guifg=#8700af      guibg=none     gui=bold
  highlight Label               guifg=#005f87      guibg=none     gui=none
  highlight Operator            guifg=#005f87      guibg=none     gui=none
  highlight Keyword             guifg=#d70087      guibg=none     gui=none
  highlight Exception           guifg=#d70087      guibg=none     gui=none
  highlight PreProc             guifg=#005f87      guibg=none     gui=none
  highlight Include             guifg=#d70087      guibg=none     gui=none
  highlight Define              guifg=#005f87      guibg=none     gui=none
  highlight Macro               guifg=#005f87      guibg=none     gui=none
  highlight PreCondit           guifg=#0087af      guibg=none     gui=none
  highlight Type                guifg=#8700af      guibg=none     gui=none
  highlight StorageClass        guifg=#005f87      guibg=none     gui=bold
  highlight Structure           guifg=#005f87      guibg=none     gui=bold
  highlight Typedef             guifg=#d70087      guibg=none     gui=bold
  highlight Special             guifg=#005f87      guibg=none     gui=none
  highlight SpecialChar         guifg=#008700      guibg=none     gui=none
  highlight Tag                 guifg=#008700      guibg=none     gui=none
  highlight Delimiter           guifg=#0087af      guibg=none     gui=none
  highlight SpecialComment      guifg=#878787      guibg=none     gui=bold
  highlight Debug               guifg=#d75f00      guibg=none     gui=none
  highlight Underlined          guifg=none         guibg=none     gui=underline
  highlight Error               guifg=#e60000      guibg=none     gui=bold
  highlight Todo                guifg=#00af5f      guibg=none     gui=bold
  highlight Ignore              guifg=#005f87      guibg=none     gui=none

  " Standard: Neovim treesitter
  if has('nvim-0.8')
    highlight @constant.builtin   guifg=#d70000      guibg=none     gui=bold
    highlight @constructor        guifg=#0087af      guibg=none     gui=none
    highlight @function           guifg=#0087af      guibg=none     gui=none
    highlight @function.builtin   guifg=#0087af      guibg=none     gui=bold
    highlight @function.call      guifg=#0087af      guibg=none     gui=none
    highlight @method             guifg=#0087af      guibg=none     gui=none
    highlight @method.builtin     guifg=#0087af      guibg=none     gui=bold
    highlight @method.call        guifg=#0087af      guibg=none     gui=none
    highlight @namespace          guifg=#8700af      guibg=none     gui=bold
    highlight @string.escape      guifg=#005f87      guibg=none     gui=none
    highlight @tag.attribute      guifg=#005f87      guibg=none     gui=none
    highlight @tag.delimiter      guifg=#005f87      guibg=none     gui=none
    highlight @text.emphasis      guifg=none         guibg=none     gui=italic
    highlight @text.literal       guifg=#5f8700         guibg=none     gui=none
    highlight @text.strong        guifg=none         guibg=none     gui=bold
    highlight @text.title         guifg=#0087af      guibg=none     gui=bold
    highlight @text.title.1       guifg=#008700      guibg=none     gui=bold
    highlight @text.title.2       guifg=#0087af      guibg=none     gui=bold
    highlight @text.title.3       guifg=#8700af      guibg=none     gui=bold
    highlight @text.title.4       guifg=#d70087      guibg=none     gui=bold
    highlight @text.title.5       guifg=#d70087      guibg=none     gui=none
    highlight @text.title.6       guifg=#d70087      guibg=none     gui=italic
    highlight @type               guifg=#8700af      guibg=none     gui=none
    highlight @type.builtin       guifg=#8700af      guibg=none     gui=bold
    highlight @type.definition    guifg=#8700af      guibg=none     gui=none
    highlight @variable           guifg=#444444      guibg=none     gui=none
    highlight @variable.builtin   guifg=#d70000      guibg=none     gui=bold
  endif

  " Non Standard: language-specific overrides, keep to absolute minimum
  highlight diffAdded           guifg=#008700      guibg=none     gui=none
  highlight diffRemoved         guifg=#d70000      guibg=none     gui=none
  highlight helpBacktick        guifg=#0087af      guibg=none     gui=none
  highlight helpIgnore          guifg=#0087af      guibg=none     gui=none
  highlight helpStar            guifg=#0087af      guibg=none     gui=none
endif
