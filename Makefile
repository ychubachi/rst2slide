TARGET = test.pdf
OBJS = test.rst
STYLE = slides.style
BACKGROUND = background.svg

.SUFFIXES: .rst .pdf

all: $(TARGET)

$(TARGET): $(STYLE) $(BACKGROUND)

clean:
	-rm -f *~

.rst.pdf:
	rst2pdf -s $(STYLE) -b1 $<
	impressive $@
