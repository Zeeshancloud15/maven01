# Use the generic OpenJDK 21 image
FROM openjdk:21

WORKDIR /app

COPY target/cicd-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
