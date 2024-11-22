FROM ubuntu:latest


RUN apt update && apt install -y bind9 dnsutils


COPY named.conf.local /etc/bind/named.conf.local
COPY db.asa.br /etc/bind/db.asa.br


EXPOSE 53/tcp
EXPOSE 53/udp


CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
