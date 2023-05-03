FROM ubuntu:20.04

   
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
EXPOSE 443/tcp
