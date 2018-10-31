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

init-as-fresh-git-repository:
	rm -Rf .git .gitmodules src/common &&\
	git init &&\
	git submodule add https://github.com/mam10eks/common-latex.git src/common
