FROM openjdk:8-alpine

#Required for starting application up

RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY target/hello-world.jar $PROJECT_HOME/hello-world.jar

WORKDIR $PROJECT_HOME
ENTRYPOINT ["java", "-jar","./hello-world.jar"]