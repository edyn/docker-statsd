# Docker Statsd

A simple docker container for running [StatsD](https://github.com/etsy/statsd/).

## Usage

Start up statsd

```bash
$ docker run --rm --name statsd -v $PWD/config.js:/opt/statsd/config.js:ro \
  -p 8125:8125/udp -p 8126:8126 edyn/statsd
```

Send some metrics to it:

```bash
$ echo -n "example.statsd.counter.changed:10|c" | nc -w 1 -u localhost 8125
```
