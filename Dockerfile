FROM openjdk:8-jre
MAINTAINER Spooner

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
# ADD target/lib           /usr/share/lib
# Add the service itself
ARG JAR_FILE

ADD target/${JAR_FILE} /usr/share/myservice.jar

ENTRYPOINT ["/usr/local/openjdk-8/bin/java", "-jar", "/usr/share/myservice.jar"]
