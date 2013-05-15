#!/usr/bin/env zsh
function build() {
    input=$1
    mkdir -p .$input.tex_files
    cd .$input.tex_files
    TEXINPUTS=.:..:../../embl-template/:../images/:../figures/: xelatex $input
    cp $input.pdf ..
    cd ..
}
build presentation

