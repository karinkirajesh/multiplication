FROM openjdk:11
WORKDIR /app
COPY . .
RUN javac multiplication/multiply.java
CMD [ "java", "multiplication.multiply" ]