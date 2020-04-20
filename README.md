## Credits
java-micronaut-petclinic is a fork from https://github.com/bufferings/micronaut-petclinic.

## Getting started

```
docker-compose build
docker-compose up
```

The UI is available at http://localhost:8080/

## Local development

Just replicate on your development environment what is done in docker-compose.yml and Dockerfile for the application tier you want to develop and use docker only for the remaining, e.g. `docker-compose up db`

You can run the application from maven:
```
./mvnw compile exec:exec
```

or from the jar:
```
./mvnw package
java -jar target/*.jar
```
