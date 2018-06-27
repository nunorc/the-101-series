
PANDOC=pandoc
SOURCE := $(wildcard *101.md)
EXPORTED:=$(SOURCE:.md=.pdf) 

%.pdf: %.md
	$(PANDOC) $< -o PDFs/$@

all: $(EXPORTED)

