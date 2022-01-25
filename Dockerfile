FROM alpine:3.13

RUN mkdir /app
WORKDIR /app
COPY static /app/static
COPY outputs/web-server /app/web-server

EXPOSE 8080
ENTRYPOINT [ "/app/web-server" ]
