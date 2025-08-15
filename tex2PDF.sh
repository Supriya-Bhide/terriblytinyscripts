if [ -z "$1" ]
then
	echo "Enter in the following format:"
	echo "tex2PDF.sh <Latex-file-without-extension>"
	exit
fi

pdflatex $1.tex
evince $1.pdf &
