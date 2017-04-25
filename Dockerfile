FROM library/debian:jessie
MAINTAINER juan.sieira@xercode.es
RUN apt-get update && apt-get install -y apache2 php5 php5-mysql && \
    rm -rf /var/lib/apt /var/cache/apt /var/lib/dpkg 
COPY index.php /var/www/html
COPY contapache.conf /etc/apache2/sites-available/
COPY doit.sh /root
CMD ["/root/doit.sh"]

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
ENTRYPOINT [ "/bin/bash" ]
