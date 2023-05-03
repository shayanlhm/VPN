FROM ubuntu:20.04

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh   
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
while ! curl http://127.0.0.1:443/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"
EXPOSE 443

