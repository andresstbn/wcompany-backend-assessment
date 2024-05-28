.PHONY: dev

build:
	docker compose build
dev:
	docker compose up
test:
	docker compose run web pytest
preview:
	docker compose run web gunicorn -w 4 -k uvicorn.workers.UvicornWorker --chdir ./ridehailing main:app