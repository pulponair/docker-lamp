FROM httpd:2.4-alpine
RUN echo "Include /usr/local/apache2/conf/vhosts.d/*.conf" \
    >> /usr/local/apache2/conf/httpd.conf \
    && mkdir -p /var/www/dlamp/phpmyadmin \
    && wget -O /tmp/pma.tar.gz https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz  \
    && tar -xzf /tmp/pma.tar.gz  --directory /var/www/dlamp/phpmyadmin --strip 1 \
    && rm -f /tmp/pma.tar.gz \
    && cp /var/www/dlamp/phpmyadmin/config.sample.inc.php /var/www/dlamp/phpmyadmin/config.inc.php \
    && echo "\$cfg['Servers'][\$i]['AllowNoPassword'] = true" >> /var/www/dlamp/phpmyadmin/config.inc.php \
    && echo "\$cfg['Servers'][\$i]['host'] = 'mysql' >> /var/www/dlamp/phpmyadmin/config.inc.php"
