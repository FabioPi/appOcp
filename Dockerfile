FROM ubi9
LABEL description="Test Apache"
MAINTAINER Fabio Pintore <f.pintore@tiscali.it>
RUN yum install -y httpd
EXPOSE 80
copy app/* /var/www/html/
USER root
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]