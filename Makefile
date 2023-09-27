dev:
	docker-compose up -d

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit