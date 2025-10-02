# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built JAR from Jenkins workspace or host
COPY /var/lib/jenkins/.m2/repository/com/example/app/my-java-app/1.0-SNAPSHOT/my-java-app-1.0-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
