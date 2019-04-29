build:
	docker build -t d8vjork/php-node-ci:latest .

deploy: build
	docker push d8vjork/php-node-ci:latest
