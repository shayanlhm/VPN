FROM ubuntu:20.04

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh   
RUN chmod +x /entrypoint.sh
RUN sleep 100; CMD /entrypoint.sh
EXPOSE 443/tcp
