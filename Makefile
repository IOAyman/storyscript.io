install:
	npm install

build:
	rm -rf dist/*
	cp -R assets dist/
	mkdir -p dist/assets/
	cat dist/assets/css/* > dist/assets/style.css
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/404.mustache > dist/404.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/about.mustache > dist/about.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/blog.mustache > dist/blog.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/faq.mustache > dist/faq.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/index.mustache > dist/index.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/jobs.mustache > dist/jobs.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/overview.mustache > dist/overview.html
	./node_modules/mustache/bin/mustache -p src/header.mustache -p src/footer.mustache src/data.json src/team.mustache > dist/team.html

watch:
	ls src/* assets/css/*.css | entr make build
