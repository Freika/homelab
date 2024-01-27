ARG VERSION=2

FROM caddy:${VERSION}-builder AS builder

# caddy-docker-proxy can't get ssl certificate from cloudflare, so we don't use it
# (yet)

RUN xcaddy build \
    # --with github.com/lucaslorentz/caddy-docker-proxy/v2 \
    --with github.com/caddy-dns/cloudflare

FROM caddy:${VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

# CMD ["caddy", "docker-proxy"]
