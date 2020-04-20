FROM maven:3.5.4-jdk-8 as maven

WORKDIR /work

# build all dependencies for offline use
COPY pom.xml ./
RUN mvn dependency:go-offline

# build the app
ADD src ./src/
RUN mvn package
RUN ls -l /work/target/

FROM openjdk:8u171-jre-alpine

EXPOSE 8080
WORKDIR /app

COPY --from=maven /work/target/micronaut-petclinic-*.jar .

CMD ["java", "-jar", "micronaut-petclinic-0.1.0.BUILD-SNAPSHOT.jar"]
