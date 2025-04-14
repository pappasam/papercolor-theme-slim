" PaperColorSlimLight (written by Samuel Roeca <samuel.roeca@gmail.com>)
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlimLight"
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
set winborder=rounded
" Non-Linking ---------------------------------------------------------------
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
" built-in
highlight ColorColumn              guifg=NONE    guibg=#e4e4e4 gui=NONE
highlight Conceal                  guifg=#444444 guibg=NONE    gui=NONE
highlight CurSearch                guifg=#008700 guibg=#afff87 gui=NONE
highlight Cursor                   guifg=#eeeeee guibg=#444444 gui=NONE
highlight TermCursor               guifg=#eeeeee guibg=#444444 gui=NONE
highlight CursorColumn             guifg=NONE    guibg=#e4e4e4 gui=NONE
highlight CursorLine               guifg=NONE    guibg=#e4e4e4 gui=NONE
highlight CursorLineNr             guifg=#af5f00 guibg=NONE    gui=NONE
highlight DiffAdd                  guifg=NONE    guibg=#c8e0c8 gui=NONE
highlight DiffChange               guifg=NONE    guibg=#c8dddd gui=NONE
highlight DiffDelete               guifg=NONE    guibg=#e0c8c8 gui=NONE
highlight DiffText                 guifg=NONE    guibg=#b0d0d0 gui=NONE
highlight Directory                guifg=#0087af guibg=NONE    gui=bold
highlight EndOfBuffer              guifg=#444444 guibg=NONE    gui=NONE
highlight ErrorMsg                 guifg=#af0000 guibg=#ffd7ff gui=NONE
highlight Folded                   guifg=#444444 guibg=#e4e4e4 gui=NONE
highlight IncSearch                guifg=#008700 guibg=#afff87 gui=NONE
highlight LineNr                   guifg=#878787 guibg=NONE    gui=NONE
highlight MatchParen               guifg=#4e4e4e guibg=#c6c6c6 gui=NONE
highlight ModeMsg                  guifg=#5f8700 guibg=NONE    gui=NONE
highlight MoreMsg                  guifg=#5f8700 guibg=NONE    gui=NONE
highlight Normal                   guifg=#444444 guibg=#eeeeee gui=NONE
highlight NormalNC                 guifg=#444444 guibg=NONE    gui=NONE
highlight Pmenu                    guifg=#444444 guibg=#e4e4e4 gui=NONE
highlight PmenuSel                 guifg=#444444 guibg=#c6c6c6 gui=NONE
highlight Question                 guifg=#d70087 guibg=NONE    gui=NONE
highlight Search                   guifg=#444444 guibg=#e4e4e4 gui=NONE
highlight SignColumn               guifg=#008700 guibg=NONE    gui=NONE
highlight SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
highlight SpecialKey               guifg=#c6c6c6 guibg=NONE    gui=NONE
highlight SpellBad                 guifg=#af0000 guibg=NONE    gui=undercurl,italic
highlight SpellCap                 guifg=#af5f00 guibg=NONE    gui=undercurl,italic
highlight SpellLocal               guifg=#005faf guibg=NONE    gui=undercurl,italic
highlight SpellRare                guifg=#005f87 guibg=NONE    gui=undercurl,italic
highlight StatusLine               guifg=#fffff0 guibg=#005f87 gui=NONE
highlight StatusLineNC             guifg=#444444 guibg=#c6c6c6 gui=NONE
highlight Substitute               guifg=#008700 guibg=#afff87 gui=NONE
highlight TabLine                  guifg=#444444 guibg=#c6c6c6 gui=NONE
highlight TabLineFill              guifg=#005f87 guibg=#005f87 gui=NONE
highlight TabLineSel               guifg=#444444 guibg=#e4e4e4 gui=NONE
highlight Title                    guifg=#008700 guibg=NONE    gui=bold
highlight Visual                   guifg=#fffff0 guibg=#0087af gui=NONE
highlight VisualNOS                guifg=#444444 guibg=#00B5E6 gui=NONE
highlight WarningMsg               guifg=#af5f00 guibg=NONE    gui=NONE
highlight Whitespace               guifg=#c6c6c6 guibg=NONE    gui=NONE
highlight WildMenu                 guifg=#fffff0 guibg=#d70087 gui=NONE
highlight WinSeparator             guifg=#005f87 guibg=NONE    gui=NONE
" vim-preferred
highlight Comment                  guifg=#878787 guibg=NONE    gui=NONE
highlight Constant                 guifg=#444444 guibg=NONE    gui=NONE
highlight String                   guifg=#5f8700 guibg=NONE    gui=NONE
highlight Character                guifg=#5f8700 guibg=NONE    gui=bold
highlight Number                   guifg=#d75f00 guibg=NONE    gui=NONE
highlight Boolean                  guifg=#af5f00 guibg=NONE    gui=bold
highlight Float                    guifg=#d75f00 guibg=NONE    gui=NONE
highlight Identifier               guifg=#005f87 guibg=NONE    gui=NONE
highlight Function                 guifg=#0087af guibg=NONE    gui=NONE
highlight Statement                guifg=#d70087 guibg=NONE    gui=NONE
highlight Conditional              guifg=#d70087 guibg=NONE    gui=NONE
highlight Repeat                   guifg=#d70087 guibg=NONE    gui=NONE
highlight Label                    guifg=#005faf guibg=NONE    gui=NONE
highlight Operator                 guifg=#005faf guibg=NONE    gui=bold
highlight Keyword                  guifg=#d70087 guibg=NONE    gui=NONE
highlight Exception                guifg=#d70087 guibg=NONE    gui=NONE
highlight PreProc                  guifg=#d70087 guibg=NONE    gui=NONE
highlight Include                  guifg=#d70087 guibg=NONE    gui=NONE
highlight Define                   guifg=#008700 guibg=NONE    gui=bold
highlight PreCondit                guifg=#008700 guibg=NONE    gui=NONE
highlight Type                     guifg=#8700af guibg=NONE    gui=nocombine,NONE
highlight StorageClass             guifg=#008700 guibg=NONE    gui=nocombine,NONE
highlight Structure                guifg=#8700af guibg=NONE    gui=nocombine,NONE
highlight Typedef                  guifg=#8700af guibg=NONE    gui=NONE
highlight Special                  guifg=#0087af guibg=NONE    gui=bold
highlight SpecialChar              guifg=#5f8700 guibg=NONE    gui=NONE
highlight Tag                      guifg=#008700 guibg=NONE    gui=NONE
highlight Delimiter                guifg=#005f87 guibg=NONE    gui=NONE
highlight SpecialComment           guifg=#878787 guibg=NONE    gui=bold
highlight Debug                    guifg=#d75f00 guibg=NONE    gui=NONE
highlight Underlined               guifg=NONE    guibg=NONE    gui=underline
highlight Error                    guifg=#e60000 guibg=NONE    gui=bold
highlight Todo                     guifg=#00af5f guibg=NONE    gui=bold
highlight Ignore                   guifg=#005f87 guibg=NONE    gui=NONE
" diagnostics
highlight DiagnosticError          guifg=#af0000 guibg=NONE    gui=NONE
highlight DiagnosticWarn           guifg=#af5f00 guibg=NONE    gui=NONE
highlight DiagnosticInfo           guifg=#005faf guibg=NONE    gui=NONE
highlight DiagnosticHint           guifg=#005faf guibg=NONE    gui=NONE
highlight DiagnosticOk             guifg=#008700 guibg=NONE    gui=NONE
highlight DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl
highlight DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl
" html sections
highlight htmlAnchor               guifg=#005f87 guibg=NONE    gui=underline
highlight htmlH1                   guifg=#008700 guibg=NONE    gui=underline,bold
highlight htmlH2                   guifg=#0087af guibg=NONE    gui=underline,bold
highlight htmlH3                   guifg=#8700af guibg=NONE    gui=underline,bold
highlight htmlH4                   guifg=#d70087 guibg=NONE    gui=underline,bold
highlight htmlH5                   guifg=#d70087 guibg=NONE    gui=underline
highlight htmlH6                   guifg=#d70087 guibg=NONE    gui=underline
highlight htmlBold                 guifg=NONE    guibg=NONE    gui=bold
highlight htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
highlight htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
highlight htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
highlight htmlItalic               guifg=NONE    guibg=NONE    gui=italic
" custom
highlight pcsClassCombine          guifg=#8700af guibg=NONE    gui=NONE
highlight pcsClassBold             guifg=#8700af guibg=NONE    gui=bold
highlight pcsFunctionBold          guifg=#0087af guibg=NONE    gui=bold
highlight pcsParameter             guifg=#945d2d guibg=NONE    gui=NONE
" Linking -------------------------------------------------------------------
highlight clear @variable
highlight clear Added
highlight clear Changed
highlight clear Removed
highlight clear NonText
highlight clear QuickFixLine
highlight clear NormalFloat
highlight clear FloatTitle
highlight clear FloatFooter
" built-in
highlight link NormalFloat                            Normal
highlight link FloatTitle                             Title
highlight link FloatFooter                            htmlItalic
highlight link Macro                                  Define
highlight link FoldColumn                             LineNr
highlight link Added                                  DiffAdd
highlight link Changed                                DiffChange
highlight link Removed                                DiffDelete
highlight link NonText                                Comment
highlight link QuickFixLine                           CursorLine
" nvim-treesitter matchers (general)
highlight link @attribute                             Label
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
highlight link @type.definition                       pcsClassBold
highlight link @variable                              NONE
highlight link @variable.builtin                      htmlBold
highlight link @variable.parameter                    pcsParameter
highlight link @variable.member                       Identifier
" nvim-treesitter matchers (language specific)
highlight link @constructor.lua                       NONE
highlight link @markup.link.markdown_inline           NONE
highlight link @markup.quote.markdown                 htmlUnderlineItalic
" lsp.type.<id>
highlight link @lsp.type.boolean                      @boolean
highlight link @lsp.type.builtinType                  @type.builtin
highlight link @lsp.type.comment                      @comment
highlight link @lsp.type.enum                         @type
highlight link @lsp.type.enumMember                   @boolean
highlight link @lsp.type.escapeSequence               @string.escape
highlight link @lsp.type.formatSpecifier              @punctuation.special
highlight link @lsp.type.function                     Function
highlight link @lsp.type.interface                    @type
highlight link @lsp.type.keyword                      @keyword
highlight link @lsp.type.macro                        Macro
highlight link @lsp.type.method                       Function
highlight link @lsp.type.namespace                    @namespace
highlight link @lsp.type.number                       @number
highlight link @lsp.type.operator                     @operator
highlight link @lsp.type.parameter                    @variable.parameter
highlight link @lsp.type.property                     @property
highlight link @lsp.type.selfKeyword                  @variable.builtin
highlight link @lsp.type.typeAlias                    pcsClassCombine
highlight link @lsp.type.typeParameter                pcsClassCombine
highlight link @lsp.type.unresolvedReference          @comment.error
highlight link @lsp.type.variable                     NONE
" lsp.typemod.<id>.[definition,declaration]
highlight link @lsp.typemod.class.declaration         htmlBold
highlight link @lsp.typemod.class.definition          htmlBold
highlight link @lsp.typemod.function.declaration      htmlBold
highlight link @lsp.typemod.function.definition       htmlBold
highlight link @lsp.typemod.method.declaration        htmlBold
highlight link @lsp.typemod.method.definition         htmlBold
highlight link @lsp.typemod.namespace.declaration     htmlBold
highlight link @lsp.typemod.namespace.definition      htmlBold
highlight link @lsp.typemod.parameter.declaration     htmlItalic
highlight link @lsp.typemod.parameter.definition      htmlItalic
highlight link @lsp.typemod.property.declaration      htmlItalic
highlight link @lsp.typemod.property.definition       htmlItalic
highlight link @lsp.typemod.struct.declaration        htmlBold
highlight link @lsp.typemod.struct.definition         htmlBold
" html
highlight link htmlUnderline                          Underlined
highlight link htmlTitle                              Title
" misc
highlight link diffAdded                              DiffAdd
highlight link diffRemoved                            DiffDelete
