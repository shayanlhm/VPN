FROM ubuntu:20.04

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && apt autoremove -y
RUN set -ex\
    && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata \
    && apt-get install -y --no-install-recommends gettext build-essential autoconf libtool libpcre3-dev asciidoc xmlto libev-dev libc-ares-dev automake make

COPY entrypoint.sh /entrypoint.sh 
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /wait-for-it.sh
CMD /entrypoint.sh
CMD /wait-for-it.sh -t 200 www.google.com:80 -- echo "google is up"
EXPOSE 443

