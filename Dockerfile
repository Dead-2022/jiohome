FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl

RUN curl -L -o /usr/bin/nextdns https://github.com/nextdns/nextdns/releases/latest/download/nextdns-linux-amd64 \
    && chmod +x /usr/bin/nextdns

ENTRYPOINT ["/usr/bin/nextdns", "run", "-config", "9124cc"]
