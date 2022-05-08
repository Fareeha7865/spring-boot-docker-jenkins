# start with base image containing the java runtime
FROM openjdk:8
# make port 8080 available to the world outside this docker container
EXPOSE 8080
ADD target/spring-boot-docker-jenkins.jar spring-boot-docker-jenkins.jar
# run the jar file
ENTRYPOINT ["java", "-jar", "/spring-boot-docker-jenkins.jar"]
