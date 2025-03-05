# PaperColorSlim Colorscheme

This is a slimmed down re-implementation of [papercolor-theme] that:

1. Has **no abstraction**, which [maximizes performance] and simplifies user color mapping overrides.
2. Targets `gui` options (`guifg`, `guibg`, `gui`, `guicursor`) with [truecolor] support. Run `echo $COLORTERM` from your terminal. If it responds `truecolor`, you have `truecolor` support.
3. Limited to the following highlight groups for consistency across languages
   - [built-in groups]
   - [diagnostic-highlight]
   - [html-vim]
   - [lsp-semantic-highlight]
   - [nvim-treesitter highlights]
   - [preferred groups]
4. Provides both dark (`PaperColorSlim`) and light (`PaperColorSlimLight`) variants.
5. Only supports Neovim 0.8+ (the release that landed treesitter's syntax matchers).

![Screenshot](./img/screenshot.png)

## Installation

This is a normal [Neovim Package]. Install it like you would any other colorscheme, consulting your package manager's documentation.

## Dark and light

We use the dark variant by default:

```vim
colorscheme PaperColorSlim
```

The light variant is available under this name:

```vim
colorscheme PaperColorSlimLight
```

If you want to use Neovim's `'background'` option, you can place the following in your `init.vim` to automatically select light or dark based on this value.

```vim
if &background == 'dark'
  colorscheme PaperColorSlim
else
  colorscheme PaperColorSlimLight
endif
```

## Customization with Autocmds

You can configure virtually anything you want with native syntax highlighting tooling and [autocmd]. What follows are some common configuration customization requests by users, along with their solution. Example configuration below should be defined **before** you initialize your colorscheme.

### Transparent background

Some users want the background to match their terminal's background color.

```vim
autocmd ColorScheme PaperColorSlim,PaperColorSlimLight highlight Normal guibg=NONE
```

**Note:** if your terminal background differs too much from [#1c1c1c](https://www.color-hex.com/color/1c1c1c) when using `PaperColorSlim`, or [#eeeeee](https://www.color-hex.com/color/eeeeee) when using `PaperColorSlimLight`, the theme may not contrast well with your terminal's background. In this case, you will need to do one of the following:

1. Use the PaperColorSlim's colors (e.g., don't put the above in your `init.vim`)
2. Perform further customization, tweaking `guifg` and `guibg` colors where necessary
3. Use a different `colorscheme` that better-supports your background preferences

### Override color for only one variant

Suppose, hypothetically, that you like the default `guibg` color for `PaperColorSlimLight` to [#fffff0](https://www.color-hex.com/color/fffff0).

```vim
autocmd ColorScheme PaperColorSlimLight highlight Normal guibg=#fffff0
```

### Support specific plugins

Sometimes you want to customize your experience for a specific plugin's syntax groups. See my full example below with overrides supporting [snacks.nvim], [gitsigns], and [gv.vim]:

<details>
<summary>Full example</summary>
<br>

```vim
function s:papercolor_slim_linking()
  highlight link @aicomment DiagnosticInfo
  highlight link SnacksPicker Normal
  highlight link SnacksPickerBorder Normal
  highlight link SnacksPickerInputBorder Normal
  highlight link SnacksPickerPathHidden SnacksPickerFile
  highlight link SnacksPickerPathIgnored SnacksPickerFile
  highlight link SnacksPickerListCursorLine CursorLine
  highlight link diffAdded DiffAdd
  highlight link diffRemoved DiffDelete

  " Regular Git signs
  highlight link GitSignsAdd          DiffAdd
  highlight link GitSignsChange       DiffChange
  highlight link GitSignsDelete       DiffDelete
  highlight link GitSignsChangedelete GitSignsChange
  highlight link GitSignsTopdelete    GitSignsDelete
  highlight link GitSignsUntracked    GitSignsAdd

  " Number column highlights
  highlight link GitSignsAddNr          DiffAdd
  highlight link GitSignsChangeNr       DiffChange
  highlight link GitSignsDeleteNr       DiffDelete
  highlight link GitSignsChangedeleteNr GitSignsChangeNr
  highlight link GitSignsTopdeleteNr    GitSignsDeleteNr
  highlight link GitSignsUntrackedNr    GitSignsAddNr

  " Line highlights
  highlight link GitSignsAddLn          DiffAdd
  highlight link GitSignsChangeLn       DiffChange
  highlight link GitSignsChangedeleteLn GitSignsChangeLn
  highlight link GitSignsUntrackedLn    GitSignsAddLn

  " Cursor line highlights
  highlight link GitSignsAddCul          GitSignsAdd
  highlight link GitSignsChangeCul       GitSignsChange
  highlight link GitSignsDeleteCul       GitSignsDelete
  highlight link GitSignsChangedeleteCul GitSignsChangeCul
  highlight link GitSignsTopdeleteCul    GitSignsDeleteCul
  highlight link GitSignsUntrackedCul    GitSignsAddCul

  " Staged Git signs
  highlight link GitSignsStagedAdd          GitSignsAdd
  highlight link GitSignsStagedChange       GitSignsChange
  highlight link GitSignsStagedDelete       GitSignsDelete
  highlight link GitSignsStagedChangedelete GitSignsStagedChange
  highlight link GitSignsStagedTopdelete    GitSignsStagedDelete
  highlight link GitSignsStagedUntracked    GitSignsStagedAdd

  " Staged number column highlights
  highlight link GitSignsStagedAddNr          GitSignsAddNr
  highlight link GitSignsStagedChangeNr       GitSignsChangeNr
  highlight link GitSignsStagedDeleteNr       GitSignsDeleteNr
  highlight link GitSignsStagedChangedeleteNr GitSignsStagedChangeNr
  highlight link GitSignsStagedTopdeleteNr    GitSignsStagedDeleteNr
  highlight link GitSignsStagedUntrackedNr    GitSignsStagedAddNr

  " Staged line highlights
  highlight link GitSignsStagedAddLn          GitSignsAddLn
  highlight link GitSignsStagedChangeLn       GitSignsChangeLn
  highlight link GitSignsStagedChangedeleteLn GitSignsStagedChangeLn
  highlight link GitSignsStagedUntrackedLn    GitSignsStagedAddLn

  " Staged cursor line highlights
  highlight link GitSignsStagedAddCul          GitSignsAddCul
  highlight link GitSignsStagedChangeCul       GitSignsChangeCul
  highlight link GitSignsStagedDeleteCul       GitSignsDeleteCul
  highlight link GitSignsStagedChangedeleteCul GitSignsStagedChangeCul
  highlight link GitSignsStagedTopdeleteCul    GitSignsStagedDeleteCul
  highlight link GitSignsStagedUntrackedCul    GitSignsStagedAddCul

  " Preview highlights
  highlight link GitSignsAddPreview      DiffAdd
  highlight link GitSignsDeletePreview   DiffDelete
  highlight link GitSignsCurrentLineBlame NonText

  " Inline highlights (using your custom links)
  highlight link GitSignsAddInline       GitSignsAdd
  highlight link GitSignsChangeInline    GitSignsChange
  highlight link GitSignsDeleteInline    GitSignsDelete
  highlight link GitSignsAddLnInline     GitSignsAddInline
  highlight link GitSignsChangeLnInline  GitSignsChangeInline
  highlight link GitSignsDeleteLnInline  GitSignsDeleteInline

  " Virtual line highlights
  highlight link GitSignsDeleteVirtLn       DiffDelete
  highlight link GitSignsDeleteVirtLnInLine GitSignsDeleteLnInline
  highlight link GitSignsVirtLnum           GitSignsDeleteVirtLn
endfunction

augroup colorscheme_overrides_custom
  autocmd!
  autocmd ColorScheme PaperColorSlim,PaperColorSlimLight call s:papercolor_slim_linking()
  autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="VisualNOS", timeout=200})
augroup end
```

</details>

## FAQ

### Why not rewrite in Lua?

As of January 2025, in this instance, a Vimscript implementation is (very marginally) faster than a Lua implementation. Special thanks to [darthbanana13] for their robust profiling efforts.

See [here](https://github.com/pappasam/papercolor-theme-slim/issues/8) for more details.

### I don't like specific color choices

I'm open to feedback, but if we disagree, you can override anything easily for yourself. See above for customizing things to your liking with [autocmd].

### My cursor preference is overridden

If you're super specific about your terminal cursor, add the following to your configuration.

```vim
autocmd ColorScheme * set guicursor=<your-config-here>
```

## Credits

Special thanks to [Nikyle Nguyen] and all their great work on [papercolor-theme] over the years!

[Neovim Package]: https://neovim.io/doc/user/usr_05.html#_adding-a-package
[Nikyle Nguyen]: https://github.com/NLKNguyen
[autocmd]: https://neovim.io/doc/user/autocmd.html
[built-in groups]: https://neovim.io/doc/user/syntax.html#highlight-default
[darthbanana13]: https://github.com/darthbanana13
[diagnostic-highlight]: https://neovim.io/doc/user/diagnostic.html#_highlights
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[gv.vim]: https://github.com/junegunn/gv.vim
[html-vim]: https://neovim.io/doc/user/syntax.html#html.vim
[lsp-semantic-highlight]: https://neovim.io/doc/user/lsp.html#_lsp-semantic-highlights
[maximizes performance]: https://www.reddit.com/r/vim/comments/gc05k1/why_are_colorschemes_so_slow_to_load/
[nvim-treesitter highlights]: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[papercolor-theme]: https://github.com/NLKNguyen/papercolor-theme
[preferred groups]: https://neovim.io/doc/user/syntax.html#group-name
[snacks.nvim]: https://github.com/folke/snacks.nvim
[truecolor]: https://gist.github.com/sindresorhus/bed863fb8bedf023b833c88c322e44f9
