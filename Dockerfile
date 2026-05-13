# Use Java base image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8082

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
