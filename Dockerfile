FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/cicd-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
