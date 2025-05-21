FROM alpine:latest

RUN apk add --no-cache curl bash

# Download amd64 binary of nextdns and make it executable
RUN curl -L -o /usr/bin/nextdns https://github.com/nextdns/nextdns/releases/latest/download/nextdns-linux-amd64 \
    && chmod +x /usr/bin/nextdns

ENTRYPOINT ["nextdns", "run", "-config", "9124cc"]
