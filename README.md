# caddy-xbuilder

## build caddy with 
- caddy-dns/cloudflare
- mholt/caddy-webdav

## docker
docker pull usc3l/caddy-xbuilder:latest

## docker hub
https://hub.docker.com/r/usc3l/caddy-xbuilder

## github
https://github.com/usc/caddy-xbuilder

## caddy
https://github.com/caddyserver/caddy/releases

## version

Dockerfile 默认使用 Caddy 大版本 `caddy:2`，Caddy 发布新版本后只需打 tag（如 `v2.12.0`），GitHub Actions 即会触发重新构建并拉取最新版本，无需手动修改 Dockerfile。

workflow 会同时构建并推送 debian 与 alpine 两个变体：

| tag | 基础镜像 |
| --- | --- |
| `latest` | debian |
| `2` | debian |
| `2.12.0` | debian |
| `latest-alpine` | alpine |
| `2-alpine` | alpine |
| `2.12.0-alpine` | alpine |

如需本地手动锁定某个版本，可用 build arg：

```bash
docker build --build-arg CADDY_VERSION=2.11 .
```

如需手动切回 debian 基础镜像：

```bash
docker build --build-arg CADDY_VARIANT= .
```
