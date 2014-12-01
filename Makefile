NAME = mobisys
TARGET = $(NAME).pdf
SOURCE = abstract.tex \
         experimental-setup.tex \
         related.tex \
         approach.tex  \
         introduction.tex  \
         results.tex \
	 background.tex    \
         mobisys.tex   \
         tableRecallAndPower.tex \
	 conclusion.tex \
         prototype.tex \
	 mobisys.bib

$(TARGET): $(SOURCE)
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	rm -f $(TARGET) *.aux *bbl *blg 
