FROM bellsoft/liberica-openjdk-debian:21

RUN adduser --system spring-boot && addgroup --system spring-boot && adduser spring-boot spring-boot
USER spring-boot

WORKDIR /app

COPY build/libs/task-tracker-api-1.0.jar ./application.jar

ENTRYPOINT ["java", "-jar", "./application.jar"]