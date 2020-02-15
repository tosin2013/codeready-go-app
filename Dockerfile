# golang
FROM golang:alpine3.11

RUN mkdir /app && mkdir  /app/templates && mkdir -p /app/static/stylesheets
COPY main.go /app
COPY templates/welcome-template.html /app/templates
COPY static/stylesheets/background.jpg  /app/static/stylesheets
COPY static/stylesheets/welcome-template.css  /app/static/stylesheets
RUN ls -R /app
WORKDIR /app
RUN go build -o main .
EXPOSE 8080 8888
USER 1001
ENTRYPOINT ["/app/main"]
