SOURCE_DOCS := $(wildcard *.md)
SOURCE_DOCS := $(filter-out README.md metadata.md, $(SOURCE_DOCS))

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.html) \
 $(SOURCE_DOCS:.md=.pdf) \
 $(SOURCE_DOCS:.md=.docx) \
 $(SOURCE_DOCS:.md=.rtf) \
 $(SOURCE_DOCS:.md=.odt) \
 $(SOURCE_DOCS:.md=.epub)

PANDOC_OPTIONS=-f markdown       \
    --table-of-contents          \
    --number-sections            \
    --pdf-engine=xelatex         \
    --indented-code-classes='bash,numberLines html,numberLines javascript,numberLines go,numberLines' \
    --highlight-style=monochrome \
    -V mainfont="Palatino"       \
    -V fontsize="10pt"           \
    -V documentclass=report      \
    -V papersize=A5              \
    -V linestretch='0.85'        \
    -V geometry:margin=0.5in     \
    -V links-as-notes=true       \
    --metadata-file=metadata.md

PANDOC_HTML_OPTIONS=--to html5
PANDOC_PDF_OPTIONS=
PANDOC_DOCX_OPTIONS=
PANDOC_RTF_OPTIONS=
PANDOC_ODT_OPTIONS=
PANDOC_EPUB_OPTIONS=--to epub3

# Pattern-matching Rules

%.html : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@

%.pdf : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_PDF_OPTIONS) -o $@

%.docx : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_DOCX_OPTIONS) -o $@

%.rtf : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_RTF_OPTIONS) -o $@

%.odt : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_ODT_OPTIONS) -o $@

%.epub : %.md
	pandoc -s $(shell cat $<) $(PANDOC_OPTIONS) $(PANDOC_EPUB_OPTIONS) -o $@


all : $(EXPORTED_DOCS)

clean:
	-rm -f $(EXPORTED_DOCS)

.PHONY: clean
