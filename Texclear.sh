rm *.aux
rm *.dvi
rm *.log
rm *.out
rm *.ps
rm *.fls
rm *.fdb*
rm *.synctex.gz
rm *.bbl
rm *.blg
rm *.toc
rm *.blg
rm *.xcp
if [ "$1" = "-pdf" ]; then
	rm *.pdf
	echo "All generated files as well as PDFs have been cleared successfully"
else
	echo "No PDFs were harmed. Other generated file have been cleared succesfully"
fi
