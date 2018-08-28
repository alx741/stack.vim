# Vim Stack compiler

Haskell Stack compiler plugin.

To be used for the `:make` command in order to properly load errors and warnings
on the quickfix list.


## Installation

Compatible with `Vundle`, `Vim-plug`, `Pathogen`, etc.


## Usage

Set the compiler with `:compiler stack`.

Or add an auto command to your `.vimrc` file:

```vim
augroup ft_haskell
    au!
    au FileType haskell compiler stack
augroup END
```
