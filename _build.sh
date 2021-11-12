#!/bin/sh

set -ev

rm -f /home/fnaufel/Documents/UFF/Ensino/Disciplinas/Probabilidade-e-estatistica/Bookdown/docs/dfimg/*

rm -f /home/fnaufel/Documents/UFF/Ensino/Disciplinas/Probabilidade-e-estatistica/Bookdown/dfimg/*

r -v -e "bookdown::render_book('index.Rmd', 'bookdown::bs4_book')"
r -v -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

mv -f docs/_main.pdf docs/probestr.pdf
