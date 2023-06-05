FROM alpine:3.18.0
RUN apk update
RUN apk add openjdk17-jre-headless java-common wget
RUN mkdir /app
RUN mkdir /app/data
WORKDIR /app
RUN wget https://github.com/GlowstoneMC/Glowstone/releases/download/2021.8.0/glowstone.jar
WORKDIR /app/data

ENTRYPOINT ["java", "-Xms1G", "-Xmx1G", "-XX:+UseG1GC", "-jar", "/app/glowstone.jar"]
#ENTRYPOINT ["sleep", "10000"]
