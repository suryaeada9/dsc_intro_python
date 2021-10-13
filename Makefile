HTML_FILES = dsc_python.slides.html

all: $(HTML_FILES)

clean: 
	rm -f $(HTML_FILES) 

%.slides.html: %.ipynb
	jupyter nbconvert "$<" --to slides --SlidesExporter.reveal_theme=night --SlidesExporter.reveal_scroll=True --SlidesExporter.reveal_transition=none
