" PaperColorSlim (written by Samuel Roeca <samuel.roeca@gmail.com>)
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlim"
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
" Non-Linking ---------------------------------------------------------------
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
" built-in
highlight ColorColumn              guifg=NONE    guibg=#303030 gui=NONE
highlight Conceal                  guifg=#585858 guibg=NONE    gui=NONE
highlight CurSearch                guifg=#87d700 guibg=#005f00 gui=NONE
highlight Cursor                   guifg=#1c1c1c guibg=#A8A8A8 gui=NONE
highlight TermCursor               guifg=#1c1c1c guibg=#A8A8A8 gui=NONE
highlight CursorColumn             guifg=NONE    guibg=#303030 gui=NONE
highlight CursorLine               guifg=NONE    guibg=#303030 gui=NONE
highlight CursorLineNr             guifg=#ffff00 guibg=NONE    gui=NONE
highlight DiffAdd                  guifg=NONE    guibg=#183300 gui=NONE
highlight DiffChange               guifg=NONE    guibg=#183939 gui=NONE
highlight DiffDelete               guifg=NONE    guibg=#550d0d gui=NONE
highlight DiffText                 guifg=NONE    guibg=#004f4f gui=NONE
highlight Directory                guifg=#5fafd7 guibg=NONE    gui=bold
highlight EndOfBuffer              guifg=#585858 guibg=NONE    gui=NONE
highlight ErrorMsg                 guifg=#af005f guibg=#5f0000 gui=NONE
highlight Folded                   guifg=#bcbcbc guibg=#3a3a3a gui=NONE
highlight IncSearch                guifg=#87d700 guibg=#005f00 gui=NONE
highlight LineNr                   guifg=#808080 guibg=NONE    gui=NONE
highlight MatchParen               guifg=#c6c6c6 guibg=#4e4e4e gui=NONE
highlight ModeMsg                  guifg=#d7af5f guibg=NONE    gui=NONE
highlight MoreMsg                  guifg=#d7af5f guibg=NONE    gui=NONE
highlight Normal                   guifg=#d0d0d0 guibg=#1c1c1c gui=NONE
highlight NormalFloat              guifg=#d0d0d0 guibg=#262626 gui=NONE
highlight NormalNC                 guifg=#d0d0d0 guibg=NONE    gui=NONE
highlight Pmenu                    guifg=#d0d0d0 guibg=#303030 gui=NONE
highlight PmenuSel                 guifg=#d0d0d0 guibg=#585858 gui=NONE
highlight Question                 guifg=#afd700 guibg=NONE    gui=NONE
highlight Search                   guifg=#444444 guibg=#c6c6c6 gui=NONE
highlight SignColumn               guifg=#d7af00 guibg=NONE    gui=NONE
highlight SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
highlight SpecialKey               guifg=#585858 guibg=NONE    gui=NONE
highlight SpellBad                 guifg=#d787ff guibg=NONE    gui=undercurl,italic
highlight SpellCap                 guifg=#ffff00 guibg=NONE    gui=undercurl,italic
highlight SpellLocal               guifg=#5fffff guibg=NONE    gui=undercurl,italic
highlight SpellRare                guifg=#5fffff guibg=NONE    gui=undercurl,italic
highlight StatusLine               guifg=#1c1c1c guibg=#5f8787 gui=NONE
highlight StatusLineNC             guifg=#bcbcbc guibg=#3a3a3a gui=NONE
highlight Substitute               guifg=#87d700 guibg=#005f00 gui=NONE
highlight TabLine                  guifg=#bcbcbc guibg=#585858 gui=NONE
highlight TabLineFill              guifg=#262626 guibg=#262626 gui=NONE
highlight TabLineSel               guifg=#1c1c1c guibg=#5f8787 gui=NONE
highlight Title                    guifg=#d7af00 guibg=NONE    gui=bold
highlight VertSplit                guifg=#5f8787 guibg=NONE    gui=NONE
highlight Visual                   guifg=#f0f0f0 guibg=#0087af gui=NONE
highlight VisualNOS                guifg=#1c1c1c guibg=#00b7ec gui=NONE
highlight WarningMsg               guifg=#afd700 guibg=NONE    gui=NONE
highlight Whitespace               guifg=#4e4e4e guibg=NONE    gui=NONE
highlight WildMenu                 guifg=#1c1c1c guibg=#afd700 gui=NONE
highlight WinSeparator             guifg=#5f8787 guibg=NONE    gui=NONE
" vim-preferred
highlight Comment                  guifg=#808080 guibg=NONE    gui=NONE
highlight Constant                 guifg=#d0d0d0 guibg=NONE    gui=bold
highlight String                   guifg=#d7af5f guibg=NONE    gui=NONE
highlight Character                guifg=#d7af5f guibg=NONE    gui=bold
highlight Number                   guifg=#ff5faf guibg=NONE    gui=NONE
highlight Boolean                  guifg=#d7af00 guibg=NONE    gui=bold
highlight Float                    guifg=#ff5faf guibg=NONE    gui=NONE
highlight Identifier               guifg=#d7875f guibg=NONE    gui=NONE
highlight Function                 guifg=#5fafd7 guibg=NONE    gui=nocombine,NONE
highlight Statement                guifg=#afd700 guibg=NONE    gui=NONE
highlight Conditional              guifg=#afd700 guibg=NONE    gui=NONE
highlight Repeat                   guifg=#afd700 guibg=NONE    gui=NONE
highlight Label                    guifg=#00afaf guibg=NONE    gui=bold,italic
highlight Operator                 guifg=#00afaf guibg=NONE    gui=bold
highlight Keyword                  guifg=#afd700 guibg=NONE    gui=NONE
highlight Exception                guifg=#afd700 guibg=NONE    gui=NONE
highlight PreProc                  guifg=#afd700 guibg=NONE    gui=NONE
highlight Include                  guifg=#afd700 guibg=NONE    gui=NONE
highlight Define                   guifg=#5faf5f guibg=NONE    gui=NONE
highlight PreCondit                guifg=#5faf5f guibg=NONE    gui=NONE
highlight Type                     guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
highlight StorageClass             guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
highlight Structure                guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
highlight Typedef                  guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
highlight Special                  guifg=#5fafd7 guibg=NONE    gui=bold
highlight SpecialChar              guifg=#d7af5f guibg=NONE    gui=NONE
highlight Tag                      guifg=#d7af00 guibg=NONE    gui=NONE
highlight Delimiter                guifg=#00afaf guibg=NONE    gui=NONE
highlight SpecialComment           guifg=#808080 guibg=NONE    gui=bold
highlight Debug                    guifg=#ff5faf guibg=NONE    gui=NONE
highlight Underlined               guifg=NONE    guibg=NONE    gui=underline
highlight Error                    guifg=#ff8080 guibg=NONE    gui=bold
highlight Todo                     guifg=#ff8700 guibg=NONE    gui=bold
highlight Ignore                   guifg=#303030 guibg=NONE    gui=NONE
" diagnostics
highlight DiagnosticError          guifg=#d787ff guibg=NONE    gui=NONE
highlight DiagnosticWarn           guifg=#ffff00 guibg=NONE    gui=NONE
highlight DiagnosticInfo           guifg=#5fffff guibg=NONE    gui=NONE
highlight DiagnosticHint           guifg=#5fffff guibg=NONE    gui=NONE
highlight DiagnosticOk             guifg=#5faf5f guibg=NONE    gui=NONE
highlight DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl
" html sections
highlight htmlAnchor               guifg=#00afaf guibg=NONE    gui=underline
highlight htmlH1                   guifg=#d7af00 guibg=NONE    gui=underline,bold
highlight htmlH2                   guifg=#5fafd7 guibg=NONE    gui=underline,bold
highlight htmlH3                   guifg=#af87d7 guibg=NONE    gui=underline,bold
highlight htmlH4                   guifg=#ff5faf guibg=NONE    gui=underline,bold
highlight htmlH5                   guifg=#ff5faf guibg=NONE    gui=underline
highlight htmlH6                   guifg=#ff5faf guibg=NONE    gui=underline
highlight htmlBold                 guifg=NONE    guibg=NONE    gui=bold
highlight htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
highlight htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
highlight htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
highlight htmlItalic               guifg=NONE    guibg=NONE    gui=italic
" custom
highlight pcsFunctionBold          guifg=#5fafd7 guibg=NONE    gui=bold
highlight pcsParameter             guifg=#87afaf guibg=NONE    gui=NONE
" Linking -------------------------------------------------------------------
highlight clear @variable
highlight clear Added
highlight clear Changed
highlight clear Removed
highlight clear NonText
highlight clear QuickFixLine
" built-in
highlight link Macro                                  Define
highlight link FoldColumn                             LineNr
highlight link Added                                  DiffAdd
highlight link Changed                                DiffChange
highlight link Removed                                DiffDelete
highlight link NonText                                Comment
highlight link QuickFixLine                           CursorLine
" nvim-treesitter matchers (general)
highlight link @attribute                             NONE
highlight link @attribute.builtin                     NONE
highlight link @constant.builtin                      Boolean
highlight link @constructor                           NONE
highlight link @diff.delta                            DiffChange
highlight link @diff.minus                            DiffDelete
highlight link @diff.plus                             DiffAdd
highlight link @function                              pcsFunctionBold
highlight link @function.builtin                      Function
highlight link @function.call                         Function
highlight link @function.macro                        Macro
highlight link @function.method                       pcsFunctionBold
highlight link @function.method.builtin               Function
highlight link @function.method.call                  Function
highlight link @keyword.conditional                   Conditional
highlight link @keyword.directive                     SpecialComment
highlight link @keyword.exception                     Exception
highlight link @keyword.operator                      Operator
highlight link @keyword.repeat                        Repeat
highlight link @keyword.return                        Conditional
highlight link @keyword.directive.define              Define
highlight link @markup.heading                        Title
highlight link @markup.heading.1                      htmlH1
highlight link @markup.heading.2                      htmlH2
highlight link @markup.heading.3                      htmlH3
highlight link @markup.heading.4                      htmlH4
highlight link @markup.heading.5                      htmlH5
highlight link @markup.heading.6                      htmlH6
highlight link @markup.italic                         htmlItalic
highlight link @markup.link.label                     htmlAnchor
highlight link @markup.link.url                       Underlined
highlight link @markup.link.vimdoc                    htmlAnchor
highlight link @markup.list                           Delimiter
highlight link @markup.literal                        String
highlight link @markup.raw                            String
highlight link @markup.raw.block                      NormalNC
highlight link @markup.strong                         htmlBold
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
highlight link @variable                              NONE
highlight link @variable.builtin                      htmlBold
highlight link @variable.parameter                    pcsParameter
highlight link @variable.member                       Identifier
" nvim-treesitter matchers (language specific)
highlight link @constructor.lua                       NONE
highlight link @markup.link.markdown_inline           NONE
highlight link @markup.quote.markdown                 htmlUnderlineItalic
" lsp semantic highlighting
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
highlight link @lsp.type.variable                     NONE
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
" html
highlight link htmlUnderline                          Underlined
highlight link htmlTitle                              Title
