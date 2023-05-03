FROM debian:sid

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
EXPOSE 443/tcp
