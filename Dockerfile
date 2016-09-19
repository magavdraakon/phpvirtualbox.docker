FROM richarvey/nginx-php-fpm
MAINTAINER Keijo Kapp <keijo.kapp@gmail.com>

RUN curl https://codeload.github.com/imoore76/phpvirtualbox/tar.gz/5.0-5 -o phpvirtualbox-5.0-5.tar && \
	tar -xzf phpvirtualbox-5.0-5.tar && \
	mv phpvirtualbox-5.0-5 /var/www

ADD config.php /var/www/phpvirtualbox-5.0-5/

ADD phpvirtualbox.nginx.conf /etc/nginx/sites-available/phpvirtualbox
RUN ln -s /etc/nginx/sites-available/phpvirtualbox /etc/nginx/sites-enabled/phpvirtualbox
RUN rm /etc/nginx/sites-enabled/default.conf

WORKDIR /var/www/phpvirtualbox-5.0-5
EXPOSE 80
