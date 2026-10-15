FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN ./mvnw -DskipTests package
EXPOSE 8888
CMD ["java", "-jar", "target/Hello1-0.0.1-SNAPSHOT.jar"]