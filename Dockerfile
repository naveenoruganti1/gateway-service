
# Operating System
FROM ubuntu:latest

# Update Oeration System
RUN apt update -y

# Install JDK-21
RUN apt install -y openjdk-21-jdk

# Create a Directory
RUN mkdir -p datasuite/gateway-service

WORKDIR /datasuite/gateway-service

# Copy jar file from build directory into new created directory
COPY build/libs/gateway-service-1.0.jar .

EXPOSE 8080

CMD ["java", "-jar", "gateway-service-1.0.jar"]