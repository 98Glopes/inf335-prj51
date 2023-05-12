FROM openjdk:11-jre
RUN mkdir app
WORKDIR /app
COPY ./inf335prj51/target/inf335prj51-1.0-SNAPSHOT.jar ./
ENTRYPOINT java -cp inf335prj51-1.0-SNAPSHOT.jar br.com.inf335prj51.App