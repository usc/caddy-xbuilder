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

Dockerfile 默认使用 Caddy 大版本 `caddy:2`（alpine 基础镜像），Caddy 发布新版本后只需打 tag（如 `v2.12.0`），GitHub Actions 即会触发重新构建并拉取最新版本，无需手动修改 Dockerfile。

如需临时锁定某个版本，在 workflow 中传 build arg：

```yaml
build-args: |
  CADDY_VERSION=2.11
```

如需切回 debian 基础镜像，传：

```yaml
build-args: |
  CADDY_VARIANT=
```
