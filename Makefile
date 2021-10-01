.PHONY: up build down

up: build down
	docker-compose up -d

build:
	docker-compose build

down:
	-docker-compose down
