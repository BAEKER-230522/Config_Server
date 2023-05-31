FROM openjdk:17
ARG JAR_FILE=build/libs/config-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
# docker build --platform linux/amd64 -t choidaekuk/config .