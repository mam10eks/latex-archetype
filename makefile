compile: clean checkout-submodules bibtex
	cd src &&\
	pdflatex -output-directory=../output document.tex

clean:
	rm -Rf output && mkdir output

checkout-submodules:
	git submodule update --init --recursive

bibtex:
	cd src &&\
	cp literature.bib ../output/ &&\
	pdflatex -output-directory=../output document.tex &&\
	cd ../output &&\
	bibtex document &&\
	cd ../src &&\
	pdflatex -output-directory=../output document.tex &&\
	cd ..

strip-git: compile
	rm -Rf .git &&\
	git init
