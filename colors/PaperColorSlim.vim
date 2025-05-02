" PaperColorSlim (written by Samuel Roeca <samuel.roeca@gmail.com>)
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="PaperColorSlim"
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
set winborder=rounded
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
hi ColorColumn              guifg=NONE    guibg=#303030 gui=NONE
hi Conceal                  guifg=#585858 guibg=NONE    gui=NONE
hi CurSearch                guifg=#87d700 guibg=#005f00 gui=NONE
hi Cursor                   guifg=#1c1c1c guibg=#A8A8A8 gui=NONE
hi TermCursor               guifg=#1c1c1c guibg=#A8A8A8 gui=NONE
hi CursorColumn             guifg=NONE    guibg=#303030 gui=NONE
hi CursorLine               guifg=NONE    guibg=#303030 gui=NONE
hi CursorLineNr             guifg=#ffff00 guibg=NONE    gui=NONE
hi DiffAdd                  guifg=NONE    guibg=#183300 gui=NONE
hi DiffChange               guifg=NONE    guibg=#183939 gui=NONE
hi DiffDelete               guifg=NONE    guibg=#550d0d gui=NONE
hi DiffText                 guifg=NONE    guibg=#004f4f gui=NONE
hi Directory                guifg=#5fafd7 guibg=NONE    gui=bold
hi EndOfBuffer              guifg=#585858 guibg=NONE    gui=NONE
hi ErrorMsg                 guifg=#af005f guibg=#5f0000 gui=NONE
hi Folded                   guifg=#bcbcbc guibg=#3a3a3a gui=NONE
hi IncSearch                guifg=#87d700 guibg=#005f00 gui=NONE
hi LineNr                   guifg=#808080 guibg=NONE    gui=NONE
hi MatchParen               guifg=#c6c6c6 guibg=#4e4e4e gui=NONE
hi ModeMsg                  guifg=#d7af5f guibg=NONE    gui=NONE
hi MoreMsg                  guifg=#d7af5f guibg=NONE    gui=NONE
hi Normal                   guifg=#d0d0d0 guibg=#1c1c1c gui=NONE
hi NormalNC                 guifg=#d0d0d0 guibg=NONE    gui=nocombine,NONE
hi Pmenu                    guifg=#d0d0d0 guibg=#303030 gui=NONE
hi PmenuSel                 guifg=#d0d0d0 guibg=#585858 gui=NONE
hi Question                 guifg=#afd700 guibg=NONE    gui=NONE
hi Search                   guifg=#444444 guibg=#c6c6c6 gui=NONE
hi SignColumn               guifg=#d7af00 guibg=NONE    gui=NONE
hi SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
hi SpecialKey               guifg=#585858 guibg=NONE    gui=NONE
hi SpellBad                 guifg=#d787ff guibg=NONE    gui=undercurl,italic
hi SpellCap                 guifg=#ffff00 guibg=NONE    gui=undercurl,italic
hi SpellLocal               guifg=#5fffff guibg=NONE    gui=undercurl,italic
hi SpellRare                guifg=#5fffff guibg=NONE    gui=undercurl,italic
hi StatusLine               guifg=#1c1c1c guibg=#5f8787 gui=NONE
hi StatusLineNC             guifg=#bcbcbc guibg=#3a3a3a gui=NONE
hi Substitute               guifg=#87d700 guibg=#005f00 gui=NONE
hi TabLine                  guifg=#bcbcbc guibg=#585858 gui=NONE
hi TabLineFill              guifg=#262626 guibg=#262626 gui=NONE
hi TabLineSel               guifg=#1c1c1c guibg=#5f8787 gui=NONE
hi Title                    guifg=#d7af00 guibg=NONE    gui=bold
hi Visual                   guifg=#f0f0f0 guibg=#0087af gui=NONE
hi VisualNOS                guifg=#1c1c1c guibg=#00b7ec gui=NONE
hi WarningMsg               guifg=#ffff00 guibg=NONE    gui=NONE
hi Whitespace               guifg=#4e4e4e guibg=NONE    gui=NONE
hi WildMenu                 guifg=#1c1c1c guibg=#afd700 gui=NONE
hi WinSeparator             guifg=#5f8787 guibg=NONE    gui=NONE
" vim-preferred
hi Comment                  guifg=#808080 guibg=NONE    gui=NONE
hi Constant                 guifg=#d0d0d0 guibg=NONE    gui=NONE
hi String                   guifg=#d7af5f guibg=NONE    gui=nocombine,NONE
hi Character                guifg=#d7af5f guibg=NONE    gui=bold
hi Number                   guifg=#ff5faf guibg=NONE    gui=NONE
hi Boolean                  guifg=#d7af00 guibg=NONE    gui=bold
hi Float                    guifg=#ff5faf guibg=NONE    gui=NONE
hi Identifier               guifg=#d7875f guibg=NONE    gui=nocombine,NONE
hi Function                 guifg=#5fafd7 guibg=NONE    gui=nocombine,NONE
hi Statement                guifg=#afd700 guibg=NONE    gui=NONE
hi Conditional              guifg=#afd700 guibg=NONE    gui=NONE
hi Repeat                   guifg=#afd700 guibg=NONE    gui=NONE
hi Label                    guifg=#00afaf guibg=NONE    gui=nocombine,NONE
hi Operator                 guifg=#00afaf guibg=NONE    gui=bold
hi Keyword                  guifg=#afd700 guibg=NONE    gui=NONE
hi Exception                guifg=#afd700 guibg=NONE    gui=NONE
hi PreProc                  guifg=#afd700 guibg=NONE    gui=NONE
hi Include                  guifg=#afd700 guibg=NONE    gui=NONE
hi Define                   guifg=#afd700 guibg=NONE    gui=NONE
hi Macro                    guifg=#00afaf guibg=NONE    gui=nocombine,NONE
hi PreCondit                guifg=#5faf5f guibg=NONE    gui=NONE
hi Type                     guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
hi StorageClass             guifg=#5faf5f guibg=NONE    gui=nocombine,NONE
hi Structure                guifg=#af87d7 guibg=NONE    gui=nocombine,NONE
hi Typedef                  guifg=#af87d7 guibg=NONE    gui=NONE
hi Special                  guifg=#00afaf guibg=NONE    gui=bold
hi SpecialChar              guifg=#d7af5f guibg=NONE    gui=NONE
hi Tag                      guifg=#5fafd7 guibg=NONE    gui=NONE
hi Delimiter                guifg=#00afaf guibg=NONE    gui=NONE
hi SpecialComment           guifg=#808080 guibg=NONE    gui=bold
hi Debug                    guifg=#ff5faf guibg=NONE    gui=NONE
hi Underlined               guifg=NONE    guibg=NONE    gui=underline
hi Error                    guifg=#ff8080 guibg=NONE    gui=bold
hi Todo                     guifg=#ff8700 guibg=NONE    gui=bold
hi Ignore                   guifg=#303030 guibg=NONE    gui=NONE
" diagnostics
hi DiagnosticError          guifg=#d787ff guibg=NONE    gui=NONE
hi DiagnosticWarn           guifg=#ffff00 guibg=NONE    gui=NONE
hi DiagnosticInfo           guifg=#5fffff guibg=NONE    gui=NONE
hi DiagnosticHint           guifg=#5fffff guibg=NONE    gui=NONE
hi DiagnosticOk             guifg=#5faf5f guibg=NONE    gui=NONE
hi DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl
hi DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl
" html sections
hi htmlAnchor               guifg=#00afaf guibg=NONE    gui=underline
hi htmlH1                   guifg=#d7af00 guibg=NONE    gui=underline,bold
hi htmlH2                   guifg=#5fafd7 guibg=NONE    gui=underline,bold
hi htmlH3                   guifg=#af87d7 guibg=NONE    gui=underline,bold
hi htmlH4                   guifg=#ff5faf guibg=NONE    gui=underline,bold
hi htmlH5                   guifg=#ff5faf guibg=NONE    gui=underline
hi htmlH6                   guifg=#ff5faf guibg=NONE    gui=underline
hi htmlBold                 guifg=NONE    guibg=NONE    gui=bold
hi htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
hi htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
hi htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
hi htmlItalic               guifg=NONE    guibg=NONE    gui=italic
hi htmlBoldItalic           guifg=NONE    guibg=NONE    gui=bold,italic
" custom
hi pcsClassCombine          guifg=#af87d7 guibg=NONE    gui=NONE
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
" nvim-treesitter matchers (general)
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
hi link @markup.link.label                     htmlAnchor
hi link @markup.link.url                       Underlined
hi link @markup.link.vimdoc                    htmlAnchor
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
hi link @variable.builtin                      htmlBoldItalic
hi link @variable.member                       Identifier
hi link @variable.parameter                    NONE
" nvim-treesitter matchers (language specific)
hi link @constructor.lua                       NONE
hi link @markup.link.markdown_inline           NONE
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
" lsp (language-specific)
hi link @lsp.type.class.markdown               NONE
" html
hi link htmlUnderline                          Underlined
hi link htmlTitle                              Title
" misc; corrections for bad upstream decisions
hi link SnacksPickerListCursorLine             CursorLine
hi link TelescopeSelection                     CursorLine
hi link diffAdded                              DiffAdd
hi link diffRemoved                            DiffDelete
