FROM alpine:latest
EXPOSE 80
RUN mkdir /app
WORKDIR /app
COPY ./epoxy-server /app/
COPY ./config.toml /app/

CMD ["/app/epoxy-server", "--format", "toml", "/app/config.toml"]
