# golang
FROM golang:alpine3.11

RUN mkdir /app
COPY main.go /app
COPY templates/ /app
COPY static/ /app
RUN ls /app
WORKDIR /app
RUN go build -o main .
EXPOSE 8080 8888
USER 1001
ENTRYPOINT ["/app/main"]
