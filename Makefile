all: build-dir hello-app.xar hello-app2.xar

build-dir:
	mkdir build

hello-app.xar:
	cd apps/hello-app; zip -r ../../build/hello-app.xar .

hello-app2.xar:
	cd apps/hello-app2; zip -r ../../build/hello-app2.xar .

clean:
	rm -r build
