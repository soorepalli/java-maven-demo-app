# Dockerfile
FROM eclipse-temurin:17-jre
WORKDIR /app
# Copy the built jar from Maven target folder
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
# Runs the jar (for CLI apps this will run and exit; that’s fine for a demo)
ENTRYPOINT ["java","-jar","/app/app.jar"]
