# flyway

sql migration tool

## Getting started

- local
```
docker pull mysql:5.7
docker run --name mysql5.7-test -e MYSQL_ROOT_PASSWORD=root -d -v mysql:/home/josh/Desktop/josh/practice/mysql5.7 -p 3309:3306 mysql:5.7

JAVA_HOME=/lib/jvm/java-11-openjdk-amd64/ mvn clean
JAVA_HOME=/lib/jvm/java-11-openjdk-amd64/ mvn compile
JAVA_HOME=/lib/jvm/java-11-openjdk-amd64/ mvn spring-boot:run

# exit after success
```

- k8s
```
# build
docker login -u "$CI_CONTAINER_REG_ACCOUNT" -p "$CI_CONTAINER_REG_PASSWORD" "$CI_REGISTRY"
docker build -t "$CI_REGISTRY/$PROJECT_ID_GITLAB/$CI_APPLICATION_REPOSITORY:$TAG" -f Dockerfile-build .
docker push "$CI_REGISTRY/$PROJECT_ID_GITLAB/$CI_APPLICATION_REPOSITORY:$TAG"

#deploy
kubectl apply -f deploy/job.yaml
```