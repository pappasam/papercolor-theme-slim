#!/bin/bash

# Script designed to profile startup speed compared to neovim's default colorscheme

nvim -Nu NONE --startuptime startup.txt +colorscheme\ PaperColorSlim +q
nvim -Nu NONE --startuptime startup.txt +colorscheme\ default +q
