FROM alpine

RUN apk add --no-cache curl bash
RUN curl -s https://nextdns.io/install | sh

ENTRYPOINT ["nextdns", "run", "-config", "9124cc"]
