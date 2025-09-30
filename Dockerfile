FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/demo-app.war /app/demo-app.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo-app.war"]