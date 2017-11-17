FROM openjdk:8
ADD target/springmvc-helloworld.war springmvc-helloworld.war
EXPOSE 8101
ENTRYPOINT ["java", "-jar", "worksetupService.jar"]
