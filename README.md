# Vim Stack compiler

Official Haskell [Stack](https://docs.haskellstack.org/en/stable/README/)
compiler plugin distributed in Vim's runtime.

To be used for the `:make` command in order to properly load errors and warnings
on the quickfix list.


## Installation

If your Vim's runtime is up to date you should already have it, if not, you can
install it as a normal plugin.

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
