.PHONY: up
up:
	docker-compose up -d

.PHONY: clean
clean:
	docker-compose down --rmi all --volumes --remove-orphans
	yes | docker builder prune