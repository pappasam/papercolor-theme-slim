" PaperColorSlimLight (written by Samuel Roeca <samuel.roeca@gmail.com>)
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlimLight"
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
hi ColorColumn              guifg=NONE    guibg=#e4e4e4 gui=NONE
hi Conceal                  guifg=#444444 guibg=NONE    gui=NONE
hi CurSearch                guifg=#008700 guibg=#afff87 gui=NONE
hi Cursor                   guifg=#eeeeee guibg=#444444 gui=NONE
hi TermCursor               guifg=#eeeeee guibg=#444444 gui=NONE
hi CursorColumn             guifg=NONE    guibg=#e4e4e4 gui=NONE
hi CursorLine               guifg=NONE    guibg=#e4e4e4 gui=NONE
hi CursorLineNr             guifg=#af5f00 guibg=NONE    gui=NONE
hi DiffAdd                  guifg=NONE    guibg=#c8e0c8 gui=NONE
hi DiffChange               guifg=NONE    guibg=#c8dddd gui=NONE
hi DiffDelete               guifg=NONE    guibg=#e0c8c8 gui=NONE
hi DiffText                 guifg=NONE    guibg=#b0d0d0 gui=NONE
hi Directory                guifg=#0087af guibg=NONE    gui=bold
hi EndOfBuffer              guifg=#444444 guibg=NONE    gui=NONE
hi ErrorMsg                 guifg=#af0000 guibg=#ffd7ff gui=NONE
hi Folded                   guifg=#444444 guibg=#e4e4e4 gui=NONE
hi IncSearch                guifg=#008700 guibg=#afff87 gui=NONE
hi LineNr                   guifg=#878787 guibg=NONE    gui=NONE
hi MatchParen               guifg=#4e4e4e guibg=#c6c6c6 gui=NONE
hi ModeMsg                  guifg=#5f8700 guibg=NONE    gui=NONE
hi MoreMsg                  guifg=#5f8700 guibg=NONE    gui=NONE
hi Normal                   guifg=#444444 guibg=#eeeeee gui=NONE
hi NormalNC                 guifg=#444444 guibg=NONE    gui=nocombine,NONE
hi Pmenu                    guifg=#444444 guibg=#e4e4e4 gui=NONE
hi PmenuSel                 guifg=#444444 guibg=#c6c6c6 gui=NONE
hi Question                 guifg=#d70087 guibg=NONE    gui=NONE
hi Search                   guifg=#444444 guibg=#e4e4e4 gui=NONE
hi SignColumn               guifg=#008700 guibg=NONE    gui=NONE
hi SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
hi SpecialKey               guifg=#c6c6c6 guibg=NONE    gui=NONE
hi SpellBad                 guifg=#af0000 guibg=NONE    gui=undercurl,italic
hi SpellCap                 guifg=#af5f00 guibg=NONE    gui=undercurl,italic
hi SpellLocal               guifg=#005faf guibg=NONE    gui=undercurl,italic
hi SpellRare                guifg=#005f87 guibg=NONE    gui=undercurl,italic
hi StatusLine               guifg=#fffff0 guibg=#005f87 gui=NONE
hi StatusLineNC             guifg=#444444 guibg=#c6c6c6 gui=NONE
hi Substitute               guifg=#008700 guibg=#afff87 gui=NONE
hi TabLine                  guifg=#444444 guibg=#c6c6c6 gui=NONE
hi TabLineFill              guifg=#005f87 guibg=#005f87 gui=NONE
hi TabLineSel               guifg=#444444 guibg=#e4e4e4 gui=NONE
hi Title                    guifg=#008700 guibg=NONE    gui=bold
hi Visual                   guifg=#fffff0 guibg=#0087af gui=NONE
hi VisualNOS                guifg=#444444 guibg=#00B5E6 gui=NONE
hi WarningMsg               guifg=#af5f00 guibg=NONE    gui=NONE
hi Whitespace               guifg=#c6c6c6 guibg=NONE    gui=NONE
hi WildMenu                 guifg=#fffff0 guibg=#d70087 gui=NONE
hi WinSeparator             guifg=#005f87 guibg=NONE    gui=NONE
" vim-preferred
hi Comment                  guifg=#878787 guibg=NONE    gui=NONE
hi Constant                 guifg=#444444 guibg=NONE    gui=bold
hi String                   guifg=#5f8700 guibg=NONE    gui=nocombine,NONE
hi Character                guifg=#5f8700 guibg=NONE    gui=bold
hi Number                   guifg=#d75f00 guibg=NONE    gui=NONE
hi Boolean                  guifg=#af5f00 guibg=NONE    gui=bold
hi Float                    guifg=#d75f00 guibg=NONE    gui=NONE
hi Identifier               guifg=#945d2d guibg=NONE    gui=nocombine,NONE
hi Function                 guifg=#0087af guibg=NONE    gui=nocombine,NONE
hi Statement                guifg=#d70087 guibg=NONE    gui=NONE
hi Conditional              guifg=#d70087 guibg=NONE    gui=NONE
hi Repeat                   guifg=#d70087 guibg=NONE    gui=NONE
hi Label                    guifg=#005faf guibg=NONE    gui=nocombine,NONE
hi Operator                 guifg=#005faf guibg=NONE    gui=bold
hi Keyword                  guifg=#d70087 guibg=NONE    gui=NONE
hi Exception                guifg=#d70087 guibg=NONE    gui=NONE
hi PreProc                  guifg=#d70087 guibg=NONE    gui=NONE
hi Include                  guifg=#d70087 guibg=NONE    gui=NONE
hi Define                   guifg=#d70087 guibg=NONE    gui=NONE
hi Macro                    guifg=#005faf guibg=NONE    gui=nocombine,NONE
hi PreCondit                guifg=#008700 guibg=NONE    gui=NONE
hi Type                     guifg=#8700af guibg=NONE    gui=nocombine,NONE
hi StorageClass             guifg=#008700 guibg=NONE    gui=nocombine,NONE
hi Structure                guifg=#8700af guibg=NONE    gui=nocombine,NONE
hi Typedef                  guifg=#8700af guibg=NONE    gui=NONE
hi Special                  guifg=#005faf guibg=NONE    gui=bold
hi SpecialChar              guifg=#5f8700 guibg=NONE    gui=NONE
hi Tag                      guifg=#0087af guibg=NONE    gui=NONE
hi Delimiter                guifg=#005f87 guibg=NONE    gui=NONE
hi SpecialComment           guifg=#878787 guibg=NONE    gui=bold
hi Debug                    guifg=#d75f00 guibg=NONE    gui=NONE
hi Underlined               guifg=NONE    guibg=NONE    gui=underline
hi Error                    guifg=#e60000 guibg=NONE    gui=bold
hi Todo                     guifg=#00af5f guibg=NONE    gui=bold
hi Ignore                   guifg=#005f87 guibg=NONE    gui=NONE
" diagnostics
hi DiagnosticError          guifg=#af0000 guibg=NONE    gui=NONE
hi DiagnosticWarn           guifg=#af5f00 guibg=NONE    gui=NONE
hi DiagnosticInfo           guifg=#005faf guibg=NONE    gui=NONE
hi DiagnosticHint           guifg=#005faf guibg=NONE    gui=NONE
hi DiagnosticOk             guifg=#008700 guibg=NONE    gui=NONE
hi DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl
" html sections
hi htmlH1                   guifg=#008700 guibg=NONE    gui=bold
hi htmlH2                   guifg=#0087af guibg=NONE    gui=bold
hi htmlH3                   guifg=#8700af guibg=NONE    gui=bold
hi htmlH4                   guifg=#d70087 guibg=NONE    gui=bold
hi htmlH5                   guifg=#d70087 guibg=NONE    gui=NONE
hi htmlH6                   guifg=#d70087 guibg=NONE    gui=italic
hi htmlBold                 guifg=NONE    guibg=NONE    gui=bold
hi htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
hi htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
hi htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
hi htmlItalic               guifg=NONE    guibg=NONE    gui=italic
hi htmlBoldItalic           guifg=NONE    guibg=NONE    gui=bold,italic
" custom
hi pcsClassCombine          guifg=#8700af guibg=NONE    gui=NONE
" Linking -------------------------------------------------------------------
hi clear @variable
hi clear Added
hi clear Changed
hi clear Removed
hi clear NonText
hi clear QuickFixLine
hi clear NormalFloat
hi clear FloatTitle
hi clear FloatFooter
" built-in
hi link NormalFloat                            Normal
hi link FloatTitle                             Title
hi link FloatFooter                            htmlItalic
hi link FoldColumn                             LineNr
hi link Added                                  DiffAdd
hi link Changed                                DiffChange
hi link Removed                                DiffDelete
hi link NonText                                Comment
hi link QuickFixLine                           CursorLine
hi link LspReferenceText                       CursorLine
hi link LspReferenceRead                       CursorLine
hi link LspReferenceWrite                      CursorLine
hi link LspReferenceTarget                     CursorLine
" treesitter-highlight-groups
hi link @attribute                             Label
hi link @attribute.builtin                     NONE
hi link @constant.builtin                      Boolean
hi link @constructor                           NONE
hi link @diff.delta                            DiffChange
hi link @diff.minus                            DiffDelete
hi link @diff.plus                             DiffAdd
hi link @function                              Function
hi link @function.builtin                      Function
hi link @function.call                         Function
hi link @function.macro                        Macro
hi link @function.method                       Function
hi link @function.method.builtin               Function
hi link @function.method.call                  Function
hi link @keyword.conditional                   Conditional
hi link @keyword.directive                     Conditional
hi link @keyword.directive.define              Define
hi link @keyword.exception                     Exception
hi link @keyword.operator                      Operator
hi link @keyword.repeat                        Repeat
hi link @keyword.return                        Conditional
hi link @markup.heading                        Title
hi link @markup.heading.1                      htmlH1
hi link @markup.heading.2                      htmlH2
hi link @markup.heading.3                      htmlH3
hi link @markup.heading.4                      htmlH4
hi link @markup.heading.5                      htmlH5
hi link @markup.heading.6                      htmlH6
hi link @markup.italic                         htmlItalic
hi link @markup.link                           Label
hi link @markup.list                           Delimiter
hi link @markup.literal                        String
hi link @markup.raw                            String
hi link @markup.raw.block                      NormalNC
hi link @markup.strong                         htmlBold
hi link @module                                StorageClass
hi link @module.builtin                        StorageClass
hi link @namespace                             StorageClass
hi link @property                              Identifier
hi link @string.escape                         Special
hi link @string.special.path                   Underlined
hi link @string.special.url                    Underlined
hi link @tag.attribute                         Identifier
hi link @tag.delimiter                         Operator
hi link @type                                  Type
hi link @type.builtin                          Type
hi link @type.definition                       Type
hi link @variable                              NormalNC
hi link @variable.builtin                      htmlBold
hi link @variable.member                       Identifier
hi link @variable.parameter                    NormalNC
" nvim-treesitter matchers (lang-specific)
hi link @constructor.lua                       NONE
hi link @function.macro.vim                    Keyword
hi link @markup.quote.markdown                 htmlItalic
hi link @tag.builtin.tsx                       Tag
hi link @tag.tsx                               Tag
hi link @variable.vim                          NONE
" lsp.type.<id>
hi link @lsp.type.boolean                      @boolean
hi link @lsp.type.builtinType                  @type.builtin
hi link @lsp.type.comment                      @comment
hi link @lsp.type.enum                         @type
hi link @lsp.type.enumMember                   @boolean
hi link @lsp.type.escapeSequence               @string.escape
hi link @lsp.type.formatSpecifier              @punctuation.special
hi link @lsp.type.function                     @function.call
hi link @lsp.type.interface                    @type
hi link @lsp.type.keyword                      @keyword
hi link @lsp.type.macro                        Macro
hi link @lsp.type.method                       @function.method.call
hi link @lsp.type.namespace                    @namespace
hi link @lsp.type.number                       @number
hi link @lsp.type.operator                     @operator
hi link @lsp.type.parameter                    @variable.parameter
hi link @lsp.type.property                     @property
hi link @lsp.type.typeAlias                    pcsClassCombine
hi link @lsp.type.typeParameter                pcsClassCombine
hi link @lsp.type.unresolvedReference          @comment.error
hi link @lsp.type.variable                     NONE
" lsp (lang-specific)
hi link @lsp.type.class.markdown               NONE
" html
hi link htmlUnderline                          Underlined
hi link htmlTitle                              Title
" misc; corrections for bad upstream decisions
hi link SnacksPickerListCursorLine             CursorLine
hi link TelescopeSelection                     CursorLine
hi link diffAdded                              DiffAdd
hi link diffRemoved                            DiffDelete
