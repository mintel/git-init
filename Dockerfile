FROM alpine:3.8

LABEL maintainer Francesco Ciocchetti <fc@mintel.com>

RUN apk --no-cache --update add bash git openssh && \
    rm -rf /var/lib/apt/lists/*

VOLUME /git
WORKDIR /git

ADD scripts/ /

ENTRYPOINT ["git"]
CMD ["--help"]
