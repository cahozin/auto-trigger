
FROM httpd:2.4
RUN dnf -y install httpd && dnf clean all
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
