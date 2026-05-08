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
if [ "$2" = "-x" ]; then
    # Compile with XeLaTeX (system fonts, fontspec work here)
    xelatex -shell-escape "$1.tex"
    bibtex "$1"
    xelatex -shell-escape "$1.tex"
    xelatex -shell-escape "$1.tex"
else
	latex  $1.tex
	bibtex $1
	dvips $1.dvi
	ps2pdf -dALLOWPSTRANSPARENCY $1.ps
#	evince $1.pdf &
fi

if [ "$2" = "-b" ]; then
	for((i=1; i<=2; i++)); do
		latex  $1.tex
		bibtex $1
		dvips $1.dvi
                ps2pdf -dALLOWPSTRANSPARENCY $1.ps
	done
fi
evince $1.pdf &
#code $1.pdf &
