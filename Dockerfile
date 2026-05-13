FROM eclipse-temurin:21

WORKDIR /app

COPY helloworld.java .

RUN javac helloworld.java

CMD ["java", "helloworld"]
