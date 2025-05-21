FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl

# Download NextDNS amd64 binary for Linux
RUN curl -L -o /usr/bin/nextdns https://github.com/nextdns/nextdns/releases/latest/download/nextdns-linux-amd64 && chmod +x /usr/bin/nextdns

ENTRYPOINT ["nextdns", "run", "-config", "9124cc"]
