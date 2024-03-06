FROM debian:bullseye
RUN apt update
RUN apt upgrade -y
RUN apt install mariadb-server -y
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./script.sh /
COPY ./lesser.sh /
CMD ["bash", "/lesser.sh"]
