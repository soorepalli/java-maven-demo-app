# Dockerfile
FROM tomcat:9.0-jdk17-temurin
# Copy the built WAR into Tomcat as ROOT.war (served at /)
ARG WAR_FILE=target/*.war
COPY ${WAR_FILE} /usr/local/tomcat/webapps/ROOT.war
