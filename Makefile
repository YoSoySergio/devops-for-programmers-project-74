dev:
	docker-compose up --abort-on-container-exit

down:
	docker-compose down app

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
