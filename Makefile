TARGET = slide.pdf
OBJS = slide.rst

STYLE = style.json
BACKGROUND = cover.svg back.svg

DEBUG = --show-frame-boundary

.SUFFIXES: .rst .pdf

all: $(TARGET)

show: $(TARGET)
	impressive $(TARGET)

$(TARGET): $(STYLE) $(BACKGROUND)

.rst.pdf:
	rst2pdf --stylesheets=$(STYLE) --break-level=2 $(DEBUG) $<

clean:
	-rm -f *~ *.pdf

style:
	rst2pdf --stylesheets=$(STYLE) --print-styles | less