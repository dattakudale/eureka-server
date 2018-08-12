FROM openjdk:8-jdk-alpine

RUN docker inspect -f . maven:3.3.3
RUN mvn clean install
VOLUME /tmp
ADD ./target/eureka-server-1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8761  
