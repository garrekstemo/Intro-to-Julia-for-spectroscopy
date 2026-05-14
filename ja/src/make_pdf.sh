#!/bin/zsh

filename="Juliaによるプログラミング入門.pdf"

pandoc ../chapters/*.md -f markdown+tex_math_dollars --pdf-engine=lualatex \
    -V geometry:margin=1in \
    -V mainfont="Hiragino Mincho ProN" \
    -V mathfont="Libertinus Math" \
    -V monofont="DejaVu Sans Mono" \
    -V colorlinks=true \
    --toc \
    -o "../../pdf/$filename"
cd ../../pdf
echo "PDF created at $PWD/$filename"
