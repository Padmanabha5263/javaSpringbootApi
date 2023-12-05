# Use an official OpenJDK runtime as a parent image
FROM openjdk:22-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container at /app
COPY target/crudApi-0.0.1-SNAPSHOT.jar /app/crudApi-0.0.1-SNAPSHOT.jar

# Expose the port your application runs on
EXPOSE 8080

# Specify the command to run on container start
CMD ["java", "-jar", "crudApi-0.0.1-SNAPSHOT.jar"]
