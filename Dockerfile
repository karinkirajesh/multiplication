FROM openjdk:11
WORKDIR /app
COPY . .
RUN javac --multiply.java
CMD [ "java", "multiplication.multiply" ]