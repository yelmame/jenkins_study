#use the redhat universal base image ubi-8 
FROM docker.io/redhat/ubi8

#install apache http server
RUN yum install -y httpd && \
    yum clean all

# copy th index,html file into the web server directory 
COPY index.html /var/www/html/

#set th working directory 
WORKDIR /var/www/html

# expose port 80 for http traffic
EXPOSE 80/tcp

#RUN APache http server to the foreground

CMD ["httpd", "-D", "FOREGROUND"]
