build:
	docker build -t tamasujvari/flask-app-sap .
run:
	docker run -p 8080:8080 --name flask-app-cont -d tamasujvari/flask-app-sap
push:
	docker push tamasujvari/flask-app-sap
test:
	curl http://localhost:8080
clean:
	docker container rm -f flask-app-cont
	docker image rm -f tamasujvari/flask-app-sap