FROM openjdk:13-jdk-buster

# Inspired from https://github.com/mahito1594/docker-textidote/blob/94e1046946ecc15a117c822c9a40ee555a7a0500/Dockerfile

WORKDIR /textidote
RUN wget -q https://github.com/sylvainhalle/textidote/releases/download/v0.8.1/textidote.jar

WORKDIR /data

ENTRYPOINT ["java", "-jar", "/textidote/textidote.jar"]
CMD ["--help"]