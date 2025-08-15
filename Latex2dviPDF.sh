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
latex  $1.tex
bibtex $1
dvipdf $1.dvi
evince $1.pdf &

if [ "$2" = "-b" ]; then
	for((i=1; i<=2; i++)); do
		latex  $1.tex
		bibtex $1
		dvipdf $1.dvi
	done
fi
evince $1.pdf &
#code $1.pdf &
