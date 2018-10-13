
build:
	docker-compose build fluentd-test

test: build
	docker-compose down
	docker-compose run fluentd-test
	docker-copose up -d

attach: build
	docker-compose run fluentd-test sh
