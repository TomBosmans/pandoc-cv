include .env

all: build pdf html

pdf:
	docker run --rm -v .:/workspace pandoc -s /workspace/src/main.md -o /workspace/bin/cv.pdf --css=/workspace/src/style.css --self-contained --pdf-engine=wkhtmltopdf

html:
	docker run --rm -v .:/workspace pandoc -s /workspace/src/main.md -o /workspace/bin/cv.html --css=/workspace/src/style.css --self-contained

build:
	docker build -t pandoc .
