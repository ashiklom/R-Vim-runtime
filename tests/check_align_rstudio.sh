#!/bin/sh

FILE=indent_test_rstudio.R

cp $FILE /tmp
nvim /tmp/$FILE -c 'set expandtab' \
    -c 'set shiftwidth=4' \
    -c 'let r_indent_ess_comments = 1' \
    -c 'let r_indent_align_args = 1' \
    -c 'let r_indent_rstudio = 1' \
    -c 'normal! gg=G' \
    -c 'wq'
nvim -d $FILE /tmp/$FILE
