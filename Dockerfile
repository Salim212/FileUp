#Start with a base image containing Java runtime

FROM openjdk:17-alpine

#Add Maintainer Info

LABEL maintainer="salim.elfanniche@epsi.fr"

#Add a volume pointing to /tmp

VOLUME /tmp

#Make port 8080 available to the world outside this container

EXPOSE 8080

#The application's jar file

ARG JAR_FILE=target/file-up-0.0.1-SNAPSHOT.jar

#Add the application's jar to container

ADD ${JAR_FILE} file-up.jar

#Run the jar file

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/.urandom", "-jar", "/file-up.jar"]