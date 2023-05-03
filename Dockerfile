FROM ubuntu:20.04

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh   
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
HEALTHCHECK --interval=5m --timeout=3s --start-period=1m\
    CMD curl -f http://shyshy3-sepehrnasiri67.b4a.run/ || exit 1
EXPOSE 443

