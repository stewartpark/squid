FROM alpine:3
MAINTAINER Stewart Park <hello@stewartjpark.com>
EXPOSE 8080

RUN apk add --no-cache squid
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
