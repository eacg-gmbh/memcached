FROM        ubuntu:17.04
MAINTAINER  Robert Reiz <reiz@versioneye.com>

RUN apt-get update
RUN apt-get upgrade -y --force-yes
RUN apt-get install -y --force-yes -q less memcached

CMD /usr/bin/memcached -u root -m 2048

EXPOSE 11211

