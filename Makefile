SRCC=main.tex
JOB=Machine_Learning
EXEC=$(JOB).pdf

all: compile view

compile:
	pdflatex -jobname $(JOB) $(SRCC)

view:
	evince $(EXEC) &

clean:
	rm -f *.aux *.log *.pdf
