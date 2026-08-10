ARG CADDY_VERSION=2

ARG CADDY_BUILDER=caddy:${CADDY_VERSION}-builder-alpine
ARG CADDY_BASE=caddy:${CADDY_VERSION}-alpine

FROM ${CADDY_BUILDER} AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-webdav

FROM ${CADDY_BASE}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy