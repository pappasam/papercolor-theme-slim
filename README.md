# PaperColorSlim Colorscheme

This is a slimmed down re-implementation of [papercolor-theme] for Neovim 0.11+ that:

1. Has **no abstraction**, which [maximizes performance] and simplifies user color mapping overrides.
2. Targets `gui` options (`guifg`, `guibg`, `gui`, `guicursor`) with [truecolor] support. Run `echo $COLORTERM` from your terminal. If it responds `truecolor`, you have `truecolor` support.
3. Sets [guicursor] for consistent cursor highlighting, and [winborder] for consistent window border highlighting.
4. Limited to the following highlight groups for consistency across languages: [built-in groups], [diagnostic-highlight], [html-vim], [lsp-semantic-highlight], [treesitter-highlight-groups], [preferred groups], and some limited miscellaneous additions (see end of colorscheme).
5. Provides both dark (`PaperColorSlim`) and light (`PaperColorSlimLight`) variants.

| Language |         PaperColorSlim (dark)          |       PaperColorSlimLight (light)       |
| -------- | :------------------------------------: | :-------------------------------------: |
| Python   | ![](./gallery/outputs/python_dark.png) | ![](./gallery/outputs/python_light.png) |

<details closed>
<summary><b>Click here for screenshot gallery</b></summary>

Note: this gallery is non-exhaustive. PaperColorSlim targets all filetypes.

| Language   |              PaperColorSlim (dark)              |           PaperColorSlimLight (light)            |
| ---------- | :---------------------------------------------: | :----------------------------------------------: |
| C          |        ![](./gallery/outputs/c_dark.png)        |        ![](./gallery/outputs/c_light.png)        |
| CSS        |       ![](./gallery/outputs/css_dark.png)       |       ![](./gallery/outputs/css_light.png)       |
| Go         |       ![](./gallery/outputs/go_dark.png)        |       ![](./gallery/outputs/go_light.png)        |
| HTML       |      ![](./gallery/outputs/html_dark.png)       |      ![](./gallery/outputs/html_light.png)       |
| Lua        |       ![](./gallery/outputs/lua_dark.png)       |       ![](./gallery/outputs/lua_light.png)       |
| Markdown   |    ![](./gallery/outputs/markdown_dark.png)     |    ![](./gallery/outputs/markdown_light.png)     |
| Python     |     ![](./gallery/outputs/python_dark.png)      |     ![](./gallery/outputs/python_light.png)      |
| Rust       |      ![](./gallery/outputs/rust_dark.png)       |      ![](./gallery/outputs/rust_light.png)       |
| TOML       |      ![](./gallery/outputs/toml_dark.png)       |      ![](./gallery/outputs/toml_light.png)       |
| TypeScript |   ![](./gallery/outputs/typescript_dark.png)    |   ![](./gallery/outputs/typescript_light.png)    |
| TSX        | ![](./gallery/outputs/typescriptreact_dark.png) | ![](./gallery/outputs/typescriptreact_light.png) |
| Vim        |       ![](./gallery/outputs/vim_dark.png)       |       ![](./gallery/outputs/vim_light.png)       |
| YAML       |      ![](./gallery/outputs/yaml_dark.png)       |      ![](./gallery/outputs/yaml_light.png)       |

</details>

## Installation

This is a normal [Neovim Package]. Install it like you would any other [colorscheme].

## Variants

```vim
colorscheme PaperColorSlim " dark variant
colorscheme PaperColorSlimLight " light variant
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

### My window border preference is overridden

Because of [nvim_set_hl](<https://neovim.io/doc/user/api.html#nvim_set_hl()>)'s propensity to cause the background to default to the color set by `Normal`, I've found that plugin compatibility is best when `FloatNormal` is mapped to `Normal`. Because of this, there is no difference between a floating window's background color normal vim window's background color. This plugin sets your floating window border for you to `rounded`.

If you're super specific about your winborder, add the following to your configuration.

```vim
autocmd ColorScheme * set winborder=<your-config-here>
```

### My cursor preference is overridden

If you're super specific about your terminal cursor, add the following to your configuration.

```vim
autocmd ColorScheme * set guicursor=<your-config-here>
```

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
