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

Dockerfile 使用 Caddy 官方基础镜像（官方 Linux 镜像 2026 年起默认即为 alpine），发布新版本后只需打 tag（如 `v2.12.0`），GitHub Actions 即会触发重新构建并拉取最新版本，无需手动修改 Dockerfile。

推送的 tag：

| tag | 说明 |
| --- | --- |
| `latest` | 最新版 |
| `2` | 大版本 |
| `2.12.0` | 具体版本 |

如需锁定某个版本：

```bash
docker build --build-arg CADDY_VERSION=2.11 .
```
