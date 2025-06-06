FROM centos:7
RUN yum install -y httpd && yum clean all
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
