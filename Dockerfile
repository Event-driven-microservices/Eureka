# Use the official OpenJDK 11 image as the base image
FROM openjdk:11-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/eureka-server-0.0.1-SNAPSHOT.jar /app/eureka-server.jar

# Expose port 8761 for the Eureka server
EXPOSE 8761

# Set the entrypoint to run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]