# Jedi Language Server

[![image-version](https://img.shields.io/pypi/v/jedi-language-server.svg)](https://python.org/pypi/jedi-language-server)
[![image-license](https://img.shields.io/pypi/l/jedi-language-server.svg)](https://python.org/pypi/jedi-language-server)
[![image-python-versions](https://img.shields.io/badge/python->=3.9-blue)](https://python.org/pypi/jedi-language-server)
[![image-pypi-downloads](https://static.pepy.tech/badge/jedi-language-server)](https://pepy.tech/projects/jedi-language-server)
[![github-action-testing](https://github.com/pappasam/jedi-language-server/actions/workflows/testing.yaml/badge.svg)](https://github.com/pappasam/jedi-language-server/actions/workflows/testing.yaml)
[![poetry](https://img.shields.io/endpoint?url=https://python-poetry.org/badge/v0.json)](https://python-poetry.org/)

A [Python](https://www.python.org/) [Language Server](https://microsoft.github.io/language-server-protocol/), with additional support for [computational notebooks](https://docs.jupyter.org/en/latest/#what-is-a-notebook), powered by the latest version of [Jedi](https://jedi.readthedocs.io/en/latest/).

## Installation

Some frameworks, like coc-jedi and vscode-python, will install and manage `jedi-language-server` for you. If you're setting up manually, you can run the following from your command line (bash / zsh):

```bash
pip install -U jedi-language-server
```

Alternatively (and preferably), use [pipx](https://github.com/pipxproject/pipx) to keep `jedi-language-server` and its dependencies isolated from your other Python dependencies. Don't worry, jedi is smart enough to figure out which Virtual environment you're currently using!

## Editor Setup

The following instructions show how to use `jedi-language-server` with your development tooling. The instructions assume you have already installed `jedi-language-server`.

### Vim and Neovim

For Neovim, this project is supported out-of-the-box by [Neovim's native LSP client](https://neovim.io/doc/user/lsp.html) through [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig). See [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#jedi_language_server) for an example configuration.

For Vim, here are some additional, actively maintained options:

- [ALE](https://github.com/dense-analysis/ale).
- [vim-lsp](https://github.com/prabirshrestha/vim-lsp).

Note: this list is non-exhaustive. If you know of a great choice not included in this list, please submit a PR!

### Emacs

Users may choose one of the following options:

- [lsp-jedi](https://github.com/fredcamps/lsp-jedi).
- [eglot](https://github.com/joaotavora/eglot)
