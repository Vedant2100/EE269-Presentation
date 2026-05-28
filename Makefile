# Makefile — LLM Safety & Mechanistic Interpretability Lecture Slides
# Usage:
#   make        — build slides.pdf
#   make clean  — remove build artefacts
#   make watch  — auto-rebuild on file changes (requires latexmk)

MAIN   = main
OUTDIR = build
PDF    = $(OUTDIR)/$(MAIN).pdf

.PHONY: all clean watch

all: $(PDF)

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(PDF): main.tex beamerthemeUCR.sty | $(OUTDIR)
	latexmk -pdf -outdir=$(OUTDIR) -interaction=nonstopmode \
	         -halt-on-error $(MAIN).tex
	@echo "✅  Built: $(PDF)"

# Fallback if latexmk is not available
pdflatex: main.tex beamerthemeUCR.sty | $(OUTDIR)
	pdflatex -output-directory=$(OUTDIR) -interaction=nonstopmode $(MAIN).tex
	pdflatex -output-directory=$(OUTDIR) -interaction=nonstopmode $(MAIN).tex
	@echo "✅  Built: $(PDF)"

watch:
	latexmk -pdf -pvc -outdir=$(OUTDIR) $(MAIN).tex

clean:
	rm -rf $(OUTDIR)
	@echo "🧹  Cleaned build artefacts"
