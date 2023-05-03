FROM ubuntu:20.04

COPY entrypoint.sh /entrypoint.sh   
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
EXPOSE 443/tcp
