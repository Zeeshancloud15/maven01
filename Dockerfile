# Use OpenJDK 21 for consistency with your Jenkins environment
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR from Jenkins workspace to the container
COPY target/cicd-app-1.0-SNAPSHOT.jar app.jar

# Expose the port your app uses (example 8080, change if needed)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
