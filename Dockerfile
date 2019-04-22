#Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

#environment variables
ENV APP = docker-image-0.0.1-SNAPSHOT.jar
ENV APP_PORT = 8080
ENV APP_DIR = /app
 
#make directory
RUN mkdir $APP_DIR 

#copy jar and related files to the image
COPY *.jar $APP_DIR

#expose server port
EXPOSE $APP_PORT

#set the working directory
WORKDIR $APP-DIR

#operate the server with related memory maximum size
ENTRYPOINT java -jar -Xmx150M $APP
