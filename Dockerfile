FROM alpine:3.3
RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && apk --update add zabbix-webif@edge zabbix-setup@edge lighttpd \
                php-cgi \
                fcgi \
                gettext \
                php-json \
                php-soap \
                php-posix \
                php-mcrypt \
                php-pdo_pgsql \
                php-pgsql \
                php-imap \
                php-ldap \
                php-xmlrpc \
         && rm -Rf /var/cache/apk/* /var/www/localhost/htdocs && ln -s /usr/share/webapps/zabbix /var/www/localhost/htdocs && chown -R lighttpd /usr/share/webapps/zabbix/conf
COPY root /
# allow to run as any user
RUN touch /run/lighttpd.pid && chmod 666 /run/lighttpd.pid && chmod 777 /var/log/lighttpd/ && mkdir /run/lighttpd && chmod 777 /run/lighttpd /usr/share/webapps/zabbix/conf
EXPOSE 8080
CMD zabbix-web
