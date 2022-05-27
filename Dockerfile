FROM caddy:2.5.1-builder-alpine as builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare

FROM alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
