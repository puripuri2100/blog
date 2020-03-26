BUILD=build
ARTICLE=article

.PHONY: build

build:
	-mkdir ${BUILD}
	cp *.css ${BUILD}
	satysfi --text-mode "html" ${ARTICLE}/index.saty -o ${BUILD}/index.html
	satysfi --text-mode "html" ${ARTICLE}/what-is-satysfi.saty -o ${BUILD}/what-is-satysfi.html

md2saty:
	pandoc -t ./satysfi.lua --template ./template.satysfi -s README.md -o README.saty -V show-title