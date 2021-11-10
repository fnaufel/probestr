#!/bin/sh

set -ev

rm /home/fnaufel/Documents/UFF/Ensino/Disciplinas/Probabilidade-e-estatistica/Bookdown/docs/dfimg/*

rm /home/fnaufel/Documents/UFF/Ensino/Disciplinas/Probabilidade-e-estatistica/Bookdown/dfimg/*

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::bs4_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

mv -f docs/_main.pdf docs/probestr.pdf
