TEX=xelatex

TEXDIR=tex
OUTDIR=output

MAIN=ops.tex
PDF=${MAIN:.tex=.pdf}

.PHONY: all pdf clean

all: pdf
	ln -fs ${OUTDIR}/${PDF} ${PDF}

pdf: ${OUTDIR}
	${TEX} --output-directory=${OUTDIR} ${TEXDIR}/${MAIN}
	${TEX} --output-directory=${OUTDIR} ${TEXDIR}/${MAIN}

clean:
	unlink ${PDF}
	rm ${OUTDIR}/*

${OUTDIR}:
	mkdir ${OUTDIR}
