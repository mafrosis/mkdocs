.PHONY: serve
serve:
	docker-compose run --rm --service-ports mkdocs

.PHONY: build
build:
	docker-compose run --rm --no-deps mkdocs build
