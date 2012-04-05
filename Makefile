TARGET = index.pdf
OBJS = index.rst

CONFIG = ./rst2pdf.conf
STYLE = ./slides.json
BACKGROUND = ./background.svg

.SUFFIXES: .rst .pdf

all: $(TARGET)

show: $(TARGET)
	impressive $(TARGET)

$(TARGET): $(STYLE) $(BACKGROUND) $(CONFIG)

.rst.pdf:
	rst2pdf --stylesheets=$(STYLE) --break-level=2 $<

clean:
	-rm -f *~ *.pdf

style:
	rst2pdf --print-styles | less