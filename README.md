# Consolation

[![Build Status][travis-badge]][travis-page]

[travis-badge]: https://api.travis-ci.org/aharris88/consolation-vim.svg?branch=master
[travis-page]: https://travis-ci.org/aharris88/consolation-vim

This is a simple plugin to just console.log() out whatever you currently have in your register on the line above your current line.

## Usage

Yank something that you want to console.log into your register and then run:

```
:Consolate
```

Or you can add a mapping to your `.vimrc` like this:

```
nnoremap <leader>c :Consolate<cr>
```

## Installation

To install, you can use your favorite package manager.

For Vundle users:

Add Plugin 'aharris88/consolation-vim' to your ~/.vimrc and then:

within Vim, run: `:PluginInstall`


## Testing

I'm using [vim-vspec](https://github.com/kana/vim-vspec).

[How to set up vim-vspec](http://whileimautomaton.net/2013/02/13211500)

[How to use Travis CI](http://whileimautomaton.net/2013/02/08211255)

[Introduction to vspec on vimcasts](http://vimcasts.org/episodes/an-introduction-to-vspec/)

The unit tests have to be written in the `t` directory with the extension `.vim`.
