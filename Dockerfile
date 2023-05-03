FROM nginx

EXPOSE 80 443

WORKDIR /etc/nginx
VOLUME ["/var/www/html", "/var/www/certificates/fullchain.pem", "/var/www/certificates/privkey.pem"]

COPY ./configs/nginx.conf ./nginx.conf
COPY ./configs/sites-enabled/ ./sites-enabled/
