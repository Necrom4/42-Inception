# FROM debian:bullseye
# RUN apt update
# RUN apt upgrade -y
# RUN apt install nginx -y
# RUN apt install openssl -y
# RUN mkdir -p /etc/nginx/ssl
# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"
# RUN mkdir -p /var/run/nginx
# COPY conf/nginx.conf /etc/nginx/nginx.conf
# RUN chmod 755 /var/www/html
# RUN chown -R www-data:www-data /var/www/html
# CMD ["nginx", "-g", "daemon off;"]

FROM debian:bullseye
RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y
RUN apt install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=CH/ST=Vaud/L=Renens/O=42/OU=42/CN=dferreir.42.fr"
RUN mkdir -p /var/run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]
