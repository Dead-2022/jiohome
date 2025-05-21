FROM alpine:latest

RUN apk add --no-cache curl bash

# Download NextDNS binary for ARM64
RUN curl -L -o /usr/bin/nextdns https://github.com/nextdns/nextdns/releases/latest/download/nextdns-linux-arm64 \
    && chmod +x /usr/bin/nextdns

ENTRYPOINT ["nextdns", "run", "-config", "9124cc"]
