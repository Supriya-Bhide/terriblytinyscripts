# #check whether mydefs.sty file exists in current folder
# if [ ! -f mydefs.sty ]; then
#     cp ~/PhD/sty-tex-files/mydefs.sty .
# fi
# #check whether psboxit.sty file exists in current folder
# if [ ! -f psboxit.sty ]; then
#     cp ~/PhD/sty-tex-files/psboxit.sty .
# fi
# #check whether pst-rel-points.sty file exists in current folder
# if [ ! -f pst-rel-points.sty ]; then
#     cp ~/PhD/sty-tex-files/pst-rel-points.sty .
# fi
# #check whether quest.def file exists in current folder
# if [ ! -f quest.def ]; then
#     cp ~/PhD/sty-tex-files/quest.def .
# fi
## sty files now sourced from TEXINPUT setup in ~/.bashrc

# Get the base name (remove extension)
BASE=$(echo "$1" | sed 's/\.[^.]*$//')

if [ "$2" = "-x" ]; then
    # Compile with XeLaTeX (system fonts, fontspec work here)
    xelatex -shell-escape "$BASE.tex"
    bibtex "$BASE"
    xelatex -shell-escape "$BASE.tex"
    xelatex -shell-escape "$BASE.tex"
else
	latex  $BASE.tex
	bibtex $BASE
	dvips $BASE.dvi
	ps2pdf -dALLOWPSTRANSPARENCY $BASE.ps
#	evince $BASE.pdf &
fi

if [ "$2" = "-b" ]; then
	for((i=1; i<=2; i++)); do
		latex  $BASE.tex
		bibtex $BASE
		dvips $BASE.dvi
                ps2pdf -dALLOWPSTRANSPARENCY $BASE.ps
	done
fi
evince $BASE.pdf &
#code $BASE.pdf &
