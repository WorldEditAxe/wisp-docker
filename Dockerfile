FROM alpine:latest
CMD mkdir /app
WORKDIR /app
COPY ./epoxy-server /app/
COPY ./config.toml /app/

ENTRYPOINT ["/app/epoxy-server", "--format", "toml", "/app/config.toml"]