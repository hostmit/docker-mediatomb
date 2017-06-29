FROM ubuntu:latest
MAINTAINER Konstantin Odnoralov hostmit@gmail.com

# Install packages
RUN apt update
RUN apt install mediatomb-daemon
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME ["/media"]

ENTRYPOINT ["/entrypoint.sh"]

