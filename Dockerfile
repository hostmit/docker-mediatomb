FROM ubuntu:latest
MAINTAINER Konstantin Odnoralov hostmit@gmail.com

# Install packages
RUN apt update
RUN apt install -y mediatomb-daemon
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN mkdir /root/.mediatomb
COPY config.xml /root/.mediatomb/

VOLUME ["/media"]

ENTRYPOINT ["/entrypoint.sh"]

