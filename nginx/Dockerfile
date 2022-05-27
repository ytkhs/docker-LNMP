FROM nginx:latest

RUN apt-get clean && apt-get update && apt-get install -y spawn-fcgi fcgiwrap wget curl tree
RUN sed -i 's/www-data/nginx/g' /etc/init.d/fcgiwrap
RUN chown nginx:nginx /etc/init.d/fcgiwrap

WORKDIR /var/www/html
CMD /etc/init.d/fcgiwrap start \
    && nginx -g 'daemon off;'