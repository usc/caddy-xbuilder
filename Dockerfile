FROM caddy:2.8.1-builder AS builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare

FROM alpine:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
