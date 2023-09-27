docker-build:
	docker build -t habitus_rabbitmq .

docker-run:
	docker run -d --hostname habitus_rabbitmq --name habitus_rabbitmq \
	-p 5672:5672 -p 15672:15672 --env-file .env habitus_rabbitmq
