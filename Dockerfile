FROM amazoncorretto:21.0.3-al2023
LABEL authors="piyaviraj"

WORKDIR workspace
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} config-service.jar
ENTRYPOINT ["java", "-jar", "config-service.jar"]