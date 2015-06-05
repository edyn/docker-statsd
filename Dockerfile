FROM node:0.12
MAINTAINER Mamadou Bobo Diallo <bobo@edyn.com>

ADD ./bin/build /bin/build
RUN /bin/build
ADD ./config.js /etc/statsd/

WORKDIR /opt/statsd

VOLUME ["/etc/statsd"]

EXPOSE 8125/udp
EXPOSE 8126

ENTRYPOINT ["node", "stats.js", "/etc/statsd/config.js"]
