ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION}

RUN apk add --no-cache curl jq jo && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/curl"]
