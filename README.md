# GoAccess Docker Image

GoAccess is an excellent terminal-based log analyzer.

The Official docker image: [allinurl/goaccess](https://hub.docker.com/r/allinurl/goaccess/)

## Basic Usage
Assuming `goaccess.conf` and `access.log` are in current working directory

```
docker run --rm -v "$PWD":/cwd -v "$PWD"/goaccess.conf:/usr/local/etc/goaccess.conf:ro \
etelej/goaccess /cwd/access.log -o /cwd/stats.html --real-time-html
```






