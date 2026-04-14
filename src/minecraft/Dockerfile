FROM eclipse-temurin:24
WORKDIR /data

COPY ./entrypoint.sh /root/
RUN chmod u+x /root/entrypoint.sh

ENTRYPOINT [ "/root/entrypoint.sh" ]
