setup:
	docker-compose run --rm app npm ci

dev:
	$(MAKE) prepare-env
	docker-compose up --abort-on-container-exit --exit-code-from app

ci:
	$(MAKE) prepare-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build:
	docker-compose -f docker-compose.yml build app

down:
	docker-compose down app

prepare-env:
	if [ ! -f .env ]; then cp .env.example .env; fi