FROM thiagobarradas/lamp:php-7.2

WORKDIR /var/www/html
COPY . /var/www/html
RUN chmod -R 777 /var/www/html
RUN chown -R www-data:www-data /var/www/html
COPY apache.vhost.conf /etc/apache2/sites-enabled/000-default.conf
RUN a2enmod rewrite
RUN echo 'alias ll="ls -l"' >> ~/.bashrc
