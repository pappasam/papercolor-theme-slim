# PaperColorSlim Colorscheme

This is a slimmed down re-implementation of [papercolor-theme] that:

1. Has **no abstraction**, which [maximizes performance] and simplifies user color mapping overrides.
2. Targets `gui` options (`guifg`, `guibg`, `gui`) with [truecolor] support. Run `echo $COLORTERM` from your terminal. If it responds `truecolor`, you have `truecolor` support.
3. Limited to the following highlight groups for consistency across languages
   - [built-in groups]
   - [preferred groups]
   - [lsp-semantic-highlight]
   - [diagnostic-highlight]
   - [nvim-treesitter highlights]
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

You can configure virtually anything you want with native syntax highlighting tooling and `autocmds`. What follows are some common configuration customization requests by users, along with their solution. For all of these recommendations, place the recommend `augroup`s in your `init.vim` **before** you initialize your colorscheme with `colorscheme PaperColorSlim` or `colorscheme PaperColorSlimLight`.

### Transparent background

Some users want the background to match their terminal's background color.

```vim
augroup change_me_please
  autocmd!
  autocmd ColorScheme PaperColorSlim,PaperColorSlimLight
        \ highlight Normal guibg=NONE
augroup end
```

**Note:** if your terminal background differs too much from [#1c1c1c](https://www.color-hex.com/color/1c1c1c) when using `PaperColorSlim`, or [#eeeeee](https://www.color-hex.com/color/eeeeee) when using `PaperColorSlimLight`, the theme may not contrast well with your terminal's background. In this case, you will need to do one of the following:

1. Use the PaperColorSlim's colors (e.g., don't put the above in your `init.vim`)
2. Perform further customization, tweaking `guifg` and `guibg` colors where necessary
3. Use a different `colorscheme` that better-supports your background preferences

### Override color for only one variant

Suppose, hypothetically, that you like the default `guibg` color for `PaperColorSlimLight` to [#fffff0](https://www.color-hex.com/color/fffff0).

```vim
augroup change_me_please
  autocmd!
  autocmd ColorScheme PaperColorSlimLight
        \ highlight Normal guibg=#fffff0
augroup end
```

### Support specific plugins

Sometimes you want to customize your experience for a specific plugin's syntax groups. Here are some examples for [snacks.nvim], [gitsigns], and [gv.vim]:

```vim
function s:papercolor_slim_linking()
  highlight link @aicomment DiagnosticInfo
  highlight link GitSignsAddInline GitSignsAdd
  highlight link GitSignsChangeInline GitSignsChange
  highlight link GitSignsDeleteInline GitSignsDelete
  highlight link SnacksPicker Normal
  highlight link SnacksPickerBorder Normal
  highlight link SnacksPickerInputBorder Normal
  highlight link SnacksPickerPathHidden Normal
  highlight link diffAdded DiffAdd
  highlight link diffRemoved DiffDelete
endfunction

augroup colorscheme_overrides_custom
  autocmd!
  autocmd ColorScheme PaperColorSlim,PaperColorSlimLight call s:papercolor_slim_linking()
augroup end
```

## FAQ

### Why not rewrite in Lua?

As of January 2025, in this instance, a Vimscript implementation is (very marginally) faster than a Lua implementation. Special thanks to [darthbanana13] for their robust profiling efforts.

See [here](https://github.com/pappasam/papercolor-theme-slim/issues/8) for more details.

### Visual Selection is barely visible for me

Personally, I prefer a lighter touch when it comes to Visual coloring. That said, I understand points about accessibility / visibility.

Luckily, you can customize things to make things feel right. To make Visual highlights stand out a bit more, add one of the following before you load your colorscheme.

#### Vim

```vim
function s:papercolor_slim_linking()
  highlight clear Visual
  highlight link Visual StatusLine
endfunction

augroup colorscheme_overrides_custom
  autocmd!
  autocmd ColorScheme PaperColorSlim,PaperColorSlimLight call s:papercolor_slim_linking()
augroup end
```

#### Lua

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("selection_color_override", { clear = true }),
    pattern = { "PaperColorSlim" },
    callback = function()
    vim.cmd("highlight clear Visual")
    vim.cmd("highlight link Visual StatusLine")
  end,
})
```

## Credits

Special thanks to [Nikyle Nguyen] and all their great work on [papercolor-theme] over the years!

[Neovim Package]: https://neovim.io/doc/user/usr_05.html#_adding-a-package
[Nikyle Nguyen]: https://github.com/NLKNguyen
[built-in groups]: https://neovim.io/doc/user/syntax.html#highlight-default
[darthbanana13]: https://github.com/darthbanana13
[diagnostic-highlight]: https://neovim.io/doc/user/diagnostic.html#_highlights
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[gv.vim]: https://github.com/junegunn/gv.vim
[lsp-semantic-highlight]: https://neovim.io/doc/user/lsp.html#_lsp-semantic-highlights
[maximizes performance]: https://www.reddit.com/r/vim/comments/gc05k1/why_are_colorschemes_so_slow_to_load/
[nvim-treesitter highlights]: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[papercolor-theme]: https://github.com/NLKNguyen/papercolor-theme
[preferred groups]: https://neovim.io/doc/user/syntax.html#group-name
[snacks.nvim]: https://github.com/folke/snacks.nvim
[truecolor]: https://gist.github.com/sindresorhus/bed863fb8bedf023b833c88c322e44f9
