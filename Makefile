build:
	docker build \
		-f go.Dockerfile \
		-t go-web:exercise .

run:
	docker run -d --rm \
		--name web \
		-p 8000:8000 \
		go-web:exercise

clean:
	docker system prune -a

stop:
	docker stop $(shell docker ps -aqf "name=web") && \
		docker rm $(shell docker ps -aqf "name=web")