# Use Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy only the built JAR
COPY target/simple-java-app-1.0.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
