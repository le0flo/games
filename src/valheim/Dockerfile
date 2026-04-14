FROM steamcmd/steamcmd:debian-13
WORKDIR /server

RUN apt-get update && apt-get install -y curl libatomic1 libpulse-dev libpulse0 && rm -rf /var/lib/apt/lists/*

COPY ./update_valheim.txt /root/
RUN steamcmd +runscript /root/update_valheim.txt

COPY ./entrypoint.sh /root/
RUN chmod u+x /root/entrypoint.sh

ENTRYPOINT [ "/root/entrypoint.sh" ]
