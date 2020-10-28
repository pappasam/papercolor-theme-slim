# PaperColorSlim Colorscheme

This is a slimmed down re-implementation of [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme) that:

1. Supports [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
2. Has no abstraction, making color mapping super simple
3. Only targets supports gui options (`guifg`, `guibg`, `gui`) with [truecolor](https://gist.github.com/sindresorhus/bed863fb8bedf023b833c88c322e44f9) support. If you're using a modern terminal ([alacritty](https://github.com/alacritty/alacritty), [iterm2](https://en.wikipedia.org/wiki/ITerm2), [gnome terminal](https://en.wikipedia.org/wiki/GNOME_Terminal), etc), you probably have truecolor support. Run `echo $COLORTERM` from your terminal. If it responds `truecolor`, you have truecolor support.
4. Limits highlight groups to: [built-in](https://neovim.io/doc/user/syntax.html#highlight-default), [preferred](https://neovim.io/doc/user/syntax.html#W18), [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/blob/333e1ab7768336d33c0e654a412ce0cb763f1da2/doc/nvim-treesitter.txt#L398), and a couple non-standard overrides at [the author](https://samroeca.com/pages/about.html)'s discretion. This results in consistent highlighting across languages, but does sacrifice some highlighting granularity.
5. Supports both `background=light` and `background=dark`

It currently targets Neovim's syntax groups, but it should technically work with regular Vim since no fancy features are used.

## Installation

If using [vim-plug](https://github.com/junegunn/vim-plug), place the following line in the Plugin section of your inti.vim / vimrc:

```vim
" ~/.vimrc
Plug 'pappasam/papercolor-theme-slim'
```

Then run the Ex command:

```vim
:PlugInstall
```

I personally use [vim-packager](https://github.com/kristijanhusak/vim-packager), so if you'd like to go down the "package" rabbit hole, I suggest giving that a try.

## Configuration

Place the following in your `~/.vimrc` or your `~/.config/nvim/init.vim`:

### Dark variant

```vim
colorscheme PaperColorSlim
```

### Light variant

If you prefer the light background:

```vim
set background=light
colorscheme PaperColorSlim
```

### Notes

- You may change to the light/dark variant at any time by running `:set background=light` or `:set background=dark`

## Development

If you want to contribute and assuming you use Neovim, I suggest installing and using [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua). It will let you see the colors associated with the hex codes, greatly simplifying development.

## Written by

Samuel Roeca _samuel.roeca@gmail.com_

Special thanks to [Nikyle Nguyen](https://github.com/NLKNguyen) and all their great work on [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme) over the years!
