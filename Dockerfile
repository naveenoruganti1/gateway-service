# Use a lightweight JDK 21 base image (significantly smaller than Ubuntu)
FROM eclipse-temurin:21-jre-alpine

# Set working directory
WORKDIR /datasuite/gateway-service

# Copy only the jar file
COPY build/libs/gateway-service-1.0.jar .

EXPOSE 8080

CMD ["java", "-jar", "gateway-service-1.0.jar"]