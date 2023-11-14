FROM openjdk:11.0.2-jre-slim
COPY target/customer-0.0.1-SNAPSHOT.jar .
CMD /usr/bin/java -Xmx400m -Xms400m -jar customer-0.0.1-SNAPSHOT.jar
EXPOSE 8080
