FROM  mariadb:latest

MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="T-Mobile"

ADD https://raw.githubusercontent.com/tmobil-demo/db/master/mariadb-install.sh /opt
ADD https://raw.githubusercontent.com/tmobil-demo/db/master/mariadb-setup.sql /tmp
ADD https://raw.githubusercontent.com/tmobil-demo/db/master/mariadb-server.cnf /etc/my.cnf.d/server.cnf

RUN chmod +x /opt/mariadb-install.sh

EXPOSE 3306

CMD ["bin/bash", "/opt/mariadb-install.sh"]
ENTRYPOINT ["mysqld"]
