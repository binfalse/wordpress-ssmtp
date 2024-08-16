FROM wordpress:latest
LABEL maintainer="mascha"

RUN apt-get update && \
    apt-get install -y ssmtp && \
    apt-get clean

RUN echo 'sendmail_path = "/usr/sbin/ssmtp -t -i"' > /usr/local/etc/php/conf.d/mail.ini

