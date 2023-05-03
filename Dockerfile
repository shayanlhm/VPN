FROM ubuntu:sid

   
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
EXPOSE 443/tcp
