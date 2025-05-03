# PaperColorSlim Colorscheme

This is a slimmed down re-implementation of [papercolor-theme] for Neovim 0.8+ that:

1. Has **no abstraction**, which [maximizes performance] and simplifies user color mapping overrides.
2. Targets `gui` options (`guifg`, `guibg`, `gui`, `guicursor`) with [truecolor] support. Run `echo $COLORTERM` from your terminal. If it responds `truecolor`, you have `truecolor` support.
3. Limited to the following highlight groups for consistency across languages: [built-in groups], [diagnostic-highlight], [html-vim], [lsp-semantic-highlight], [treesitter-highlight-groups], [preferred groups], and some limited miscellaneous additions (see end of colorscheme).
4. Provides both dark (`PaperColorSlim`) and light (`PaperColorSlimLight`) variants.

## Gallery

See <https://github.com/pappasam/papercolor-theme-slim/wiki/Gallery>

## Installation

This is a normal [Neovim Package]. Install it like you would any other [colorscheme].

## Configuration

```vim
" Select one of these two variants
colorscheme PaperColorSlim " dark
colorscheme PaperColorSlimLight " light
" ensure cursor highlights predictibly
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
" recommended if using Neovim 0.11+
set winborder=rounded
```

## Customization

You can configure virtually anything you want with native syntax highlighting tooling and [Autocmd]. What follows are some common configuration customization requests by users, along with their solution. Example configuration below should be defined **before** you initialize your colorscheme.

### Transparent background

Some users want the background to match their terminal's background color.

```vim
autocmd ColorScheme PaperColorSlim,PaperColorSlimLight highlight Normal guibg=NONE
```

**Note:** if your terminal background differs too much from [#1c1c1c](https://www.color-hex.com/color/1c1c1c) when using `PaperColorSlim`, or [#eeeeee](https://www.color-hex.com/color/eeeeee) when using `PaperColorSlimLight`, the theme may not contrast well with your terminal's background. In this case, you will need to do one of the following:

1. Use the PaperColorSlim's colors (e.g., don't put the above in your `init.vim`)
2. Perform further customization, tweaking `guifg` and `guibg` colors where necessary
3. Use a different `colorscheme` that better-supports your background preferences

### Override colors

Suppose, hypothetically, that you like the default `guibg` color for `PaperColorSlimLight` to [#fffff0](https://www.color-hex.com/color/fffff0).

```vim
autocmd ColorScheme PaperColorSlimLight highlight Normal guibg=#fffff0
```

### Third party plugin support

Sometimes you want to customize your experience for a specific plugin's syntax groups. Here's a full example for how you might link a plugin's highlight group (`ExamplePluginHighlightGroup`) to another highlight group (`CursorLine`):

```vim
function s:papercolor_slim_linking()
  highlight link ExamplePluginHighlightGroup CursorLine
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

### I don't like specific color choices

I'm open to feedback, but if we disagree, you can override anything easily for yourself. See above for customizing things to your liking with [autocmd].

## Credits

Special thanks to [Nikyle Nguyen] and all their great work on [papercolor-theme] over the years!

[Autocmd]: https://neovim.io/doc/user/autocmd.html
[Neovim Package]: https://neovim.io/doc/user/usr_05.html#_adding-a-package
[Nikyle Nguyen]: https://github.com/NLKNguyen
[built-in groups]: https://neovim.io/doc/user/syntax.html#highlight-default
[colorscheme]: https://neovim.io/doc/user/usr_06.html#%3Asyn-default-override
[darthbanana13]: https://github.com/darthbanana13
[diagnostic-highlight]: https://neovim.io/doc/user/diagnostic.html#_highlights
[guicursor]: https://neovim.io/doc/user/options.html#'guicursor'
[html-vim]: https://neovim.io/doc/user/syntax.html#html.vim
[lsp-semantic-highlight]: https://neovim.io/doc/user/lsp.html#_lsp-semantic-highlights
[maximizes performance]: https://www.reddit.com/r/vim/comments/gc05k1/why_are_colorschemes_so_slow_to_load/
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[papercolor-theme]: https://github.com/NLKNguyen/papercolor-theme
[preferred groups]: https://neovim.io/doc/user/syntax.html#group-name
[treesitter-highlight-groups]: https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups
[truecolor]: https://gist.github.com/sindresorhus/bed863fb8bedf023b833c88c322e44f9
[winborder]: https://neovim.io/doc/user/options.html#'winborder'
