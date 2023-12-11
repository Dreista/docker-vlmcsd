# docker-vlmcsd

[![Build Status][ci_badge]][ci_link]

Docker images for [vlmcsd](https://github.com/Wind4/vlmcsd).

## Usage

```shell
docker run --detach --restart=always --name=vlmcsd -p 1688:1688 dreista/vlmcsd
```

[ci_badge]: https://github.com/dreista/docker-vlmcsd/actions/workflows/build.yml/badge.svg
[ci_link]: https://github.com/dreista/docker-vlmcsd/actions/workflows/build.yml
