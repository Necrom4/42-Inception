FROM debian:bullseye
RUN apt update
RUN apt upgrade -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz && cd /
RUN chown -R root:root /var/www/wordpress
COPY /conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /conf/auto_config.sh /auto_config.sh
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN chmod +x auto_config.sh
ENTRYPOINT ["/auto_config.sh"]
