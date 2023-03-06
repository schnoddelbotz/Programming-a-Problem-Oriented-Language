
all: POL.pdf

POL.pdf:
	pdflatex POL
	pdflatex POL

clean:
	rm -f POL*.{toc,aux,log,bbl,blg,out,bcf,run.xml,dvi,text,4ct,4tc,idv,css,lg,tmp,xref,html,pdf,upa,upb}
