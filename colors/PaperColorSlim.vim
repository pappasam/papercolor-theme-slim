" PaperColorSlim: Based on <https://github.com/NLKNguyen/papercolor-theme>
" Maintainer: Samuel Roeca <samuel.roeca@gmail.com>
" Preamble {{{

" not exactly 1:1 in practice, but gives a rough gist
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

" }}}
" Both {{{

highlight SnippetTabstop gui=underdotted

highlight  link Macro          Define
highlight  link FoldColumn     LineNr
highlight! link Added          DiffAdd
highlight! link Changed        DiffChange
highlight! link Removed        DiffDelete

if has('nvim-0.8')
  " Link nvim-treesitter matchers
  highlight      @markup.italic                         gui=italic
  highlight      @markup.strong                         gui=bold
  highlight      @variable.builtin                      gui=bold,italic
  highlight link @attribute                             NONE
  highlight link @attribute.builtin                     Constant
  highlight link @constant.builtin                      Boolean
  highlight link @constructor                           Function
  highlight link @diff.delta                            DiffChange
  highlight link @diff.minus                            DiffDelete
  highlight link @diff.plus                             DiffAdd
  highlight link @function                              Function
  highlight link @function.builtin                      pcsFunctionBold
  highlight link @function.call                         Function
  highlight link @function.macro                        Macro
  highlight link @keyword.conditional                   Conditional
  highlight link @keyword.directive                     SpecialComment
  highlight link @keyword.exception                     Exception
  highlight link @keyword.operator                      Operator
  highlight link @keyword.repeat                        Repeat
  highlight link @keyword.return                        Conditional
  highlight link @keyword.directive.define              Define
  highlight link @markup.heading                        Title
  highlight link @markup.heading.1                      pcsHtmlHeader1
  highlight link @markup.heading.2                      pcsHtmlHeader2
  highlight link @markup.heading.3                      pcsHtmlHeader3
  highlight link @markup.heading.4                      pcsHtmlHeader4
  highlight link @markup.heading.5                      pcsHtmlHeader5
  highlight link @markup.heading.6                      pcsHtmlHeader6
  highlight link @markup.link.label                     pcsHtmlAnchor
  highlight link @markup.link.markdown_inline           NONE
  highlight link @markup.link.url                       Underlined
  highlight link @markup.link.vimdoc                    pcsHtmlAnchor
  highlight link @markup.list                           Delimiter
  highlight link @markup.literal                        String
  highlight link @markup.raw                            String
  highlight link @markup.raw.block                      NormalNC
  highlight link @method                                Function
  highlight link @method.builtin                        Function
  highlight link @method.call                           Function
  highlight link @module                                StorageClass
  highlight link @namespace                             StorageClass
  highlight link @string.escape                         Special
  highlight link @string.special.url                    Underlined
  highlight link @string.special.path                   Underlined
  highlight link @tag.attribute                         Identifier
  highlight link @tag.delimiter                         Operator
  highlight link @type                                  Type
  highlight link @type.builtin                          Type
  highlight link @type.definition                       Typedef
  highlight link @variable                              NormalNC
  highlight link @variable.parameter                    Identifier
  highlight link @variable.member                       Identifier

  " Language-specific overrides
  highlight link @constructor.lua                       NONE

  " Link LSP Semantic Highlighting to treesitter styles
  highlight link @lsp.type.boolean                      @boolean
  highlight link @lsp.type.builtinType                  @type.builtin
  highlight link @lsp.type.comment                      @comment
  highlight link @lsp.type.enum                         @type
  highlight link @lsp.type.enumMember                   @constant
  highlight link @lsp.type.escapeSequence               @string.escape
  highlight link @lsp.type.formatSpecifier              @punctuation.special
  highlight link @lsp.type.interface                    @type
  highlight link @lsp.type.keyword                      @keyword
  highlight link @lsp.type.namespace                    @namespace
  highlight link @lsp.type.number                       @number
  highlight link @lsp.type.operator                     @operator
  highlight link @lsp.type.parameter                    @variable.parameter
  highlight link @lsp.type.property                     @property
  highlight link @lsp.type.selfKeyword                  @variable.builtin
  highlight link @lsp.type.typeAlias                    @type.definition
  highlight link @lsp.type.unresolvedReference          @comment.error
  highlight link @lsp.type.variable                     NONE " use treesitter styles for regular variables
  highlight link @lsp.typemod.class.defaultLibrary      @type.builtin
  highlight link @lsp.typemod.enum.defaultLibrary       @type.builtin
  highlight link @lsp.typemod.enumMember.defaultLibrary @constant.builtin
  highlight link @lsp.typemod.function.defaultLibrary   @function.builtin
  highlight link @lsp.typemod.keyword.async             @keyword.coroutine
  highlight link @lsp.typemod.macro.defaultLibrary      @function.builtin
  highlight link @lsp.typemod.method.defaultLibrary     @function.builtin
  highlight link @lsp.typemod.operator.injected         @operator
  highlight link @lsp.typemod.string.injected           @string
  highlight link @lsp.typemod.type.defaultLibrary       @type.builtin
  highlight link @lsp.typemod.variable.defaultLibrary   @variable.builtin
  highlight link @lsp.typemod.variable.injected         @variable
endif

" }}}
" Dark {{{

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

  " Built-in
  highlight ColorColumn         guifg=NONE    guibg=#303030 gui=NONE
  highlight Conceal             guifg=#585858 guibg=NONE    gui=NONE
  highlight CurSearch           guifg=#87d700 guibg=#005f00 gui=NONE
  highlight Cursor              guifg=#c6c6c6 guibg=NONE    gui=NONE
  highlight CursorColumn        guifg=NONE    guibg=#303030 gui=NONE
  highlight CursorLine          guifg=NONE    guibg=#303030 gui=NONE
  highlight CursorLineNr        guifg=#ffff00 guibg=NONE    gui=NONE
  highlight DiffAdd             guifg=#ffffff guibg=#1a4400 gui=NONE
  highlight DiffChange          guifg=#ffffff guibg=#1a4747 gui=NONE
  highlight DiffDelete          guifg=#ffffff guibg=#661111 gui=NONE
  highlight DiffText            guifg=#ffffff guibg=#005757 gui=NONE
  highlight Directory           guifg=#5fafd7 guibg=NONE    gui=bold
  highlight EndOfBuffer         guifg=#585858 guibg=NONE    gui=NONE
  highlight ErrorMsg            guifg=#af005f guibg=#5f0000 gui=NONE
  highlight Folded              guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  highlight IncSearch           guifg=#87d700 guibg=#005f00 gui=NONE
  highlight LineNr              guifg=#808080 guibg=NONE    gui=NONE
  highlight MatchParen          guifg=#c6c6c6 guibg=#4e4e4e gui=NONE
  highlight ModeMsg             guifg=#d7af5f guibg=NONE    gui=NONE
  highlight MoreMsg             guifg=#d7af5f guibg=NONE    gui=NONE
  highlight NonText             guifg=#585858 guibg=NONE    gui=NONE
  highlight Normal              guifg=#d0d0d0 guibg=#1c1c1c gui=NONE
  highlight NormalFloat         guifg=#d0d0d0 guibg=#262626 gui=NONE
  highlight NormalNC            guifg=#d0d0d0 guibg=NONE    gui=NONE
  highlight Pmenu               guifg=#d0d0d0 guibg=#303030 gui=NONE
  highlight PmenuSel            guifg=#d0d0d0 guibg=#585858 gui=NONE
  highlight Question            guifg=#afd700 guibg=NONE    gui=NONE
  highlight Search              guifg=#444444 guibg=#c6c6c6 gui=NONE
  highlight SignColumn          guifg=#d7af00 guibg=NONE    gui=NONE
  highlight SpecialKey          guifg=#585858 guibg=NONE    gui=NONE
  highlight SpellBad            guifg=#d787ff guibg=NONE    gui=undercurl,italic
  highlight SpellCap            guifg=#ffff00 guibg=NONE    gui=undercurl,italic
  highlight SpellLocal          guifg=#5fffff guibg=NONE    gui=undercurl,italic
  highlight SpellRare           guifg=#5fffff guibg=NONE    gui=undercurl,italic
  highlight StatusLine          guifg=#1c1c1c guibg=#5f8787 gui=NONE
  highlight StatusLineNC        guifg=#bcbcbc guibg=#3a3a3a gui=NONE
  highlight Substitute          guifg=#87d700 guibg=#005f00 gui=NONE
  highlight TabLine             guifg=#bcbcbc guibg=#585858 gui=NONE
  highlight TabLineFill         guifg=#262626 guibg=#262626 gui=NONE
  highlight TabLineSel          guifg=#121212 guibg=#5f8787 gui=NONE
  highlight Title               guifg=#d7af00 guibg=NONE    gui=bold
  highlight VertSplit           guifg=#5f8787 guibg=NONE    gui=NONE
  highlight Visual              guifg=NONE    guibg=#303030 gui=NONE
  highlight VisualNOS           guifg=NONE    guibg=#585858 gui=NONE
  highlight WarningMsg          guifg=#afd700 guibg=NONE    gui=NONE
  highlight Whitespace          guifg=#4e4e4e guibg=NONE    gui=NONE
  highlight WildMenu            guifg=#1c1c1c guibg=#afd700 gui=NONE
  highlight WinSeparator        guifg=#5f8787 guibg=NONE    gui=NONE

  " Vim-preferred
  highlight Comment             guifg=#808080 guibg=NONE    gui=NONE
  highlight Constant            guifg=#d0d0d0 guibg=NONE    gui=bold
  highlight String              guifg=#d7af5f guibg=NONE    gui=NONE
  highlight Character           guifg=#d7af5f guibg=NONE    gui=bold
  highlight Number              guifg=#ff5faf guibg=NONE    gui=NONE
  highlight Boolean             guifg=#d7af00 guibg=NONE    gui=bold
  highlight Float               guifg=#ff5faf guibg=NONE    gui=NONE
  highlight Identifier          guifg=#d7875f guibg=NONE    gui=NONE
  highlight Function            guifg=#5fafd7 guibg=NONE    gui=nocombine,NONE
  highlight Statement           guifg=#afd700 guibg=NONE    gui=NONE
  highlight Conditional         guifg=#afd700 guibg=NONE    gui=NONE
  highlight Repeat              guifg=#afd700 guibg=NONE    gui=NONE
  highlight Label               guifg=#afd700 guibg=NONE    gui=NONE
  highlight Operator            guifg=#00afaf guibg=NONE    gui=bold
  highlight Keyword             guifg=#afd700 guibg=NONE    gui=NONE
  highlight Exception           guifg=#afd700 guibg=NONE    gui=NONE
  highlight PreProc             guifg=#afd700 guibg=NONE    gui=NONE
  highlight Include             guifg=#afd700 guibg=NONE    gui=NONE
  highlight Define              guifg=#5faf5f guibg=NONE    gui=NONE
  highlight PreCondit           guifg=#5faf5f guibg=NONE    gui=NONE
  highlight Type                guifg=#af87d7 guibg=NONE    gui=NONE
  highlight StorageClass        guifg=#af87d7 guibg=NONE    gui=NONE
  highlight Structure           guifg=#af87d7 guibg=NONE    gui=NONE
  highlight Typedef             guifg=#af87d7 guibg=NONE    gui=NONE
  highlight Special             guifg=#5fafd7 guibg=NONE    gui=bold
  highlight SpecialChar         guifg=#d7af5f guibg=NONE    gui=NONE
  highlight Tag                 guifg=#d7af00 guibg=NONE    gui=NONE
  highlight Delimiter           guifg=#00afaf guibg=NONE    gui=NONE
  highlight SpecialComment      guifg=#808080 guibg=NONE    gui=bold
  highlight Debug               guifg=#ff5faf guibg=NONE    gui=NONE
  highlight Underlined          guifg=NONE    guibg=NONE    gui=underline
  highlight Error               guifg=#ff8080 guibg=NONE    gui=bold
  highlight Todo                guifg=#ff8700 guibg=NONE    gui=bold
  highlight Ignore              guifg=#303030 guibg=NONE    gui=NONE

  " Diagnostics
  highlight DiagnosticError          guifg=#d787ff guibg=NONE gui=NONE
  highlight DiagnosticWarn           guifg=#ffff00 guibg=NONE gui=NONE
  highlight DiagnosticInfo           guifg=#5fffff guibg=NONE gui=NONE
  highlight DiagnosticHint           guifg=#5fffff guibg=NONE gui=NONE
  highlight DiagnosticOk             guifg=#5faf5f guibg=NONE gui=NONE
  highlight DiagnosticUnderlineError guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineHint  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineOk    guifg=NONE    guibg=NONE gui=undercurl

  " PaperColorSlim Custom
  highlight pcsFunctionBold     guifg=#5fafd7 guibg=NONE    gui=bold
  highlight pcsHtmlAnchor       guifg=#00afaf guibg=NONE    gui=underline
  highlight pcsHtmlHeader1      guifg=#d7af00               gui=bold
  highlight pcsHtmlHeader2      guifg=#5fafd7               gui=bold
  highlight pcsHtmlHeader3      guifg=#af87d7               gui=bold
  highlight pcsHtmlHeader4      guifg=#ff5faf               gui=bold
  highlight pcsHtmlHeader5      guifg=#ff5faf               gui=NONE
  highlight pcsHtmlHeader6      guifg=#ff5faf               gui=italic

  " }}}
  " Light {{{

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
  let g:terminal_color_9  = '#af5f00'
  let g:terminal_color_10 = '#d70087'
  let g:terminal_color_11 = '#8700af'
  let g:terminal_color_12 = '#d75f00'
  let g:terminal_color_13 = '#d75f00'
  let g:terminal_color_14 = '#005faf'
  let g:terminal_color_15 = '#005f87'

  " Built-in
  highlight ColorColumn         guifg=NONE    guibg=#e4e4e4 gui=NONE
  highlight Conceal             guifg=#444444 guibg=NONE    gui=NONE
  highlight CurSearch           guifg=#008700 guibg=#afff87 gui=NONE
  highlight Cursor              guifg=#c6c6c6 guibg=NONE    gui=NONE
  highlight CursorColumn        guifg=NONE    guibg=#e4e4e4 gui=NONE
  highlight CursorLine          guifg=NONE    guibg=#e4e4e4 gui=NONE
  highlight CursorLineNr        guifg=#af5f00 guibg=NONE    gui=NONE
  highlight DiffAdd             guifg=#0a2600 guibg=#90ee90 gui=NONE
  highlight DiffChange          guifg=#0a0a0a guibg=#ffd75f gui=NONE
  highlight DiffDelete          guifg=#660000 guibg=#ffc0cb gui=NONE
  highlight DiffText            guifg=#003366 guibg=#add8e6 gui=NONE
  highlight Directory           guifg=#0087af guibg=NONE    gui=bold
  highlight EndOfBuffer         guifg=#444444 guibg=NONE    gui=NONE
  highlight ErrorMsg            guifg=#af0000 guibg=#ffd7ff gui=NONE
  highlight Folded              guifg=#444444 guibg=#e4e4e4 gui=NONE
  highlight IncSearch           guifg=#008700 guibg=#afff87 gui=NONE
  highlight LineNr              guifg=#878787 guibg=NONE    gui=NONE
  highlight MatchParen          guifg=#4e4e4e guibg=#c6c6c6 gui=NONE
  highlight ModeMsg             guifg=#5f8700 guibg=NONE    gui=NONE
  highlight MoreMsg             guifg=#5f8700 guibg=NONE    gui=NONE
  highlight NonText             guifg=#c6c6c6 guibg=NONE    gui=NONE
  highlight Normal              guifg=#444444 guibg=#eeeeee gui=NONE
  highlight NormalFloat         guifg=#444444 guibg=#e4e4e4 gui=NONE
  highlight NormalNC            guifg=#444444 guibg=NONE    gui=NONE
  highlight Pmenu               guifg=#444444 guibg=#e4e4e4 gui=NONE
  highlight PmenuSel            guifg=#444444 guibg=#c6c6c6 gui=NONE
  highlight Question            guifg=#d70087 guibg=NONE    gui=NONE
  highlight Search              guifg=#444444 guibg=#e4e4e4 gui=NONE
  highlight SignColumn          guifg=#008700 guibg=NONE    gui=NONE
  highlight SpecialKey          guifg=#c6c6c6 guibg=NONE    gui=NONE
  highlight SpellBad            guifg=#af0000 guibg=NONE    gui=undercurl,italic
  highlight SpellCap            guifg=#af5f00 guibg=NONE    gui=undercurl,italic
  highlight SpellLocal          guifg=#005faf guibg=NONE    gui=undercurl,italic
  highlight SpellRare           guifg=#005f87 guibg=NONE    gui=undercurl,italic
  highlight StatusLine          guifg=#fffff0 guibg=#005f87 gui=NONE
  highlight StatusLineNC        guifg=#444444 guibg=#c6c6c6 gui=NONE
  highlight Substitute          guifg=#008700 guibg=#afff87 gui=NONE
  highlight TabLine             guifg=#444444 guibg=#c6c6c6 gui=NONE
  highlight TabLineFill         guifg=#005f87 guibg=#005f87 gui=NONE
  highlight TabLineSel          guifg=#444444 guibg=#e4e4e4 gui=NONE
  highlight Title               guifg=#008700 guibg=NONE    gui=bold
  highlight VertSplit           guifg=#005f87 guibg=NONE    gui=NONE
  highlight Visual              guifg=NONE    guibg=#c6c6c6 gui=NONE
  highlight VisualNOS           guifg=NONE    guibg=#a6a6a6 gui=NONE
  highlight WarningMsg          guifg=#d70087 guibg=NONE    gui=NONE
  highlight Whitespace          guifg=#c6c6c6 guibg=NONE    gui=NONE
  highlight WildMenu            guifg=#fffff0 guibg=#d70087 gui=NONE
  highlight WinSeparator        guifg=#005f87 guibg=NONE    gui=NONE

  " Vim-preferred
  highlight Comment             guifg=#878787 guibg=NONE    gui=NONE
  highlight Constant            guifg=#444444 guibg=NONE    gui=bold
  highlight String              guifg=#5f8700 guibg=NONE    gui=NONE
  highlight Character           guifg=#5f8700 guibg=NONE    gui=bold
  highlight Number              guifg=#d75f00 guibg=NONE    gui=NONE
  highlight Boolean             guifg=#af5f00 guibg=NONE    gui=bold
  highlight Float               guifg=#d75f00 guibg=NONE    gui=NONE
  highlight Identifier          guifg=#005f87 guibg=NONE    gui=NONE
  highlight Function            guifg=#0087af guibg=NONE    gui=nocombine,NONE
  highlight Statement           guifg=#d70087 guibg=NONE    gui=NONE
  highlight Conditional         guifg=#d70087 guibg=NONE    gui=NONE
  highlight Repeat              guifg=#d70087 guibg=NONE    gui=NONE
  highlight Label               guifg=#d70087 guibg=NONE    gui=NONE
  highlight Operator            guifg=#005f87 guibg=NONE    gui=bold
  highlight Keyword             guifg=#d70087 guibg=NONE    gui=NONE
  highlight Exception           guifg=#d70087 guibg=NONE    gui=NONE
  highlight PreProc             guifg=#d70087 guibg=NONE    gui=NONE
  highlight Include             guifg=#d70087 guibg=NONE    gui=NONE
  highlight Define              guifg=#008700 guibg=NONE    gui=NONE
  highlight PreCondit           guifg=#008700 guibg=NONE    gui=NONE
  highlight Type                guifg=#8700af guibg=NONE    gui=NONE
  highlight StorageClass        guifg=#8700af guibg=NONE    gui=NONE
  highlight Structure           guifg=#8700af guibg=NONE    gui=NONE
  highlight Typedef             guifg=#8700af guibg=NONE    gui=NONE
  highlight Special             guifg=#0087af guibg=NONE    gui=bold
  highlight SpecialChar         guifg=#5f8700 guibg=NONE    gui=NONE
  highlight Tag                 guifg=#008700 guibg=NONE    gui=NONE
  highlight Delimiter           guifg=#005f87 guibg=NONE    gui=NONE
  highlight SpecialComment      guifg=#878787 guibg=NONE    gui=bold
  highlight Debug               guifg=#d75f00 guibg=NONE    gui=NONE
  highlight Underlined          guifg=NONE    guibg=NONE    gui=underline
  highlight Error               guifg=#e60000 guibg=NONE    gui=bold
  highlight Todo                guifg=#00af5f guibg=NONE    gui=bold
  highlight Ignore              guifg=#005f87 guibg=NONE    gui=NONE

  " Diagnostics
  highlight DiagnosticError          guifg=#af0000 guibg=NONE gui=NONE
  highlight DiagnosticWarn           guifg=#af5f00 guibg=NONE gui=NONE
  highlight DiagnosticInfo           guifg=#005faf guibg=NONE gui=NONE
  highlight DiagnosticHint           guifg=#005faf guibg=NONE gui=NONE
  highlight DiagnosticOk             guifg=#008700 guibg=NONE gui=NONE
  highlight DiagnosticUnderlineError guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineHint  guifg=NONE    guibg=NONE gui=undercurl
  highlight DiagnosticUnderlineOk    guifg=NONE    guibg=NONE gui=undercurl

  " PaperColorSlim Custom
  highlight pcsFunctionBold     guifg=#0087af guibg=NONE    gui=bold
  highlight pcsHtmlAnchor       guifg=#005f87 guibg=NONE    gui=underline
  highlight pcsHtmlHeader1      guifg=#008700               gui=bold
  highlight pcsHtmlHeader2      guifg=#0087af               gui=bold
  highlight pcsHtmlHeader3      guifg=#8700af               gui=bold
  highlight pcsHtmlHeader4      guifg=#d70087               gui=bold
  highlight pcsHtmlHeader5      guifg=#d70087               gui=NONE
  highlight pcsHtmlHeader6      guifg=#d70087               gui=italic
endif

" }}}
