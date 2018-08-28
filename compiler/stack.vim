" Vim compiler file
" Compiler:         Haskell Stack
" Maintainer:       Daniel Campoverde <alx@sillybytes.net>
" Latest Revision:  2018-08-28

if exists("current_compiler")
  finish
endif
let current_compiler = "stack"

let s:cpo_save = &cpo
set cpo&vim


CompilerSet errorformat=
    \%-G%.%#:\ build\ %.%#,
    \%-G%.%#:\ configure\ %.%#,
    \%-G[%.%#]%.%#,
    \%-G%.%#preprocessing\ %.%#,
    \%-G%.%#configuring\ %.%#,
    \%-G%.%#building\ %.%#,
    \%-G%.%#linking\ %.%#,
    \%-G%.%#installing\ %.%#,
    \%-G%.%#registering\ %.%#,
    \%-G%.%#:\ copy/register%.%#,
    \%-G--%.%#,
    \%E%f:%l:%c:\ error:%m,
    \%E%f:%l:%c:\ error:,%Z%m


if exists('g:compiler_stack_ignore_unmatched_lines')
  CompilerSet errorformat+=%-G%.%#
endif

let &cpo = s:cpo_save
unlet s:cpo_save
