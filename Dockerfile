ARG CADDY_VERSION=2
ARG CADDY_VARIANT=-alpine

FROM caddy:${CADDY_VERSION}-builder${CADDY_VARIANT} AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-webdav

FROM caddy:${CADDY_VERSION}${CADDY_VARIANT}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy