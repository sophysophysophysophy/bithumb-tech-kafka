FROM openjdk:8-jdk-alpine
LABEL maintainer="61459@naver.com"
VOLUME /tmp
ARG JAR_FILE=./build/libs/*.jar
ADD ${JAR_FILE} app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.data.mongo.url=mongodb://192.168.0.42/test", "-Djava.security.egd=file:/dev/./uradom", "-jar", "app.jar"]