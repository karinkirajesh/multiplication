FROM openjdk:11 AS builder
WORKDIR /app
COPY . .
RUN javac -multiply.java
#CMD [ "java", "multiplication.multiply" ]

#============second build light weight=========
FROM Openjdk:11-jre-slim

WORKDIR /app

COPY --from=builder /app/multiply.class .

CMD [ "java", "multiplication.multiply" ]
