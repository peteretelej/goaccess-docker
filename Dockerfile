FROM debian:jessie
MAINTAINER Peter Etelej <peter@etelej.com>

COPY ./goaccess.conf /etc/goaccess.conf

RUN apt-get update && apt-get upgrade --no-install-recommends -y \
	    && apt-get install -y wget libncursesw5-dev \
	    && wget  \
	    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["goaccess"]


