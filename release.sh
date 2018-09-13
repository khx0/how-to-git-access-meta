#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# build and release local TeX document from source with timestamp
# date: 2018-09-13
##########################################################################################

# tex sheet
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm

outname="Guide-to-git_$(date +%Y-%m-%d).pdf"

echo $outname

mv main.pdf $outname

