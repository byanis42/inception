sleep 10

mkdir -p /run/php

wp-cli.phar config create	--allow-root \
					--dbname=$DB_NAME \
					--dbuser=$MYSQL_USER \
					--dbpass=$MYSQL_ROOT_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www//wordpress'



wp-cli.phar core install	--allow-root \
			--url=$DOMAIN_NAME \
			--title=$MYSQL_USER \
			--admin_user=$MYSQL_USER \
			--admin_password=$MYSQL_ROOT_PASSWORD \
			--admin_email=$ADMIN_EMAIL \
			--path='/var/www//wordpress'

wp-cli.phar user create --allow-root \
			tcc2 tcc2@example.com \
			--user_pass=$MYSQL_ROOT_PASSWORD \
			--path='/var/www//wordpress'


/usr/sbin/php-fpm7.4 -F

