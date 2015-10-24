FROM debian:jessie

MAINTAINER Patrick Daether, http://github.com/pdaether

RUN apt-get update && apt-get install -y supervisor

COPY ./dep /tmp/

RUN cd /tmp && dpkg -i *.deb && rm *.deb

COPY ./server.cfg /etc/opsdash/server.cfg
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080
EXPOSE 6273
EXPOSE 6273/udp

CMD ["/usr/bin/supervisord"]
