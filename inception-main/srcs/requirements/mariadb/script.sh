#!/bin/sh

service mariadb start;

mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"
mysql -u root -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root shutdown

exec mysqld_safe