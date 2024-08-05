FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh /etc/mysql/mariadb.conf.d/

ENTRYPOINT [ "/etc/mysql/mariadb.conf.d/script.sh" ] 
















