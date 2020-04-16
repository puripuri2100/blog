BUILD=build
ARTICLE=article
ReadingSATySFi=readingSATySFi

.PHONY: build

build:
	-mkdir ${BUILD}
	cp *.css ${BUILD}
	satysfi --text-mode "html" ${ARTICLE}/index.saty -o ${BUILD}/index.html
	satysfi --text-mode "html" ${ARTICLE}/what-is-satysfi.saty -o ${BUILD}/what-is-satysfi.html
	satysfi --text-mode "html" ${ARTICLE}/make-satysfi-package.saty -o ${BUILD}/make-satysfi-package.html
	-mkdir ${BUILD}/${ReadingSATySFi}
	satysfi --text-mode "html" ${ARTICLE}/${ReadingSATySFi}/index.saty -o ${BUILD}/${ReadingSATySFi}/index.html
	satysfi --text-mode "html" ${ARTICLE}/${ReadingSATySFi}/build.saty -o ${BUILD}/${ReadingSATySFi}/build.html

md2saty:
	pandoc -t ./satysfi.lua --template ./template.satysfi -s README.md -o README.saty -V show-title