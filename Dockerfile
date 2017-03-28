FROM php:7.0-apache
MAINTAINER Keijo Kapp <keijo.kapp@gmail.com>

RUN apt-get update && apt-get install libxml2-dev && \
	docker-php-ext-install soap && \
	rm -rf /var/lib/apt/lists/*

RUN curl https://codeload.github.com/ezraholm50/phpvirtualbox/tar.gz/master -o /tmp/phpvirtualbox.tar.gz && \
	tar -xzf /tmp/phpvirtualbox.tar.gz -C /tmp && \
	rm -rf /var/www/html && mv /tmp/phpvirtualbox-master /var/www/html && \
	rm /tmp/phpvirtualbox.tar.gz

ADD config.php /var/www/html

WORKDIR /var/www/html
EXPOSE 80
