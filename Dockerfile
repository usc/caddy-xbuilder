ARG CADDY_VERSION=2

FROM caddy:${CADDY_VERSION}-builder AS builder

RUN --mount=type=cache,target=/go/pkg/mod \
    --mount=type=cache,target=/root/.cache/go-build \
    xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-webdav

FROM caddy:${CADDY_VERSION}

RUN apk add --no-cache tzdata

COPY --from=builder /usr/bin/caddy /usr/bin/caddy