FROM amazonlinux:latest

#install
RUN yum install httpd -y

# configure
RUN echo "Jenkins Docker Build and Publish " > /var/www/html/index.html


#Restart jenkins server
RUN service httpd restart

EXPOSE 80


CMD ["sh", "-c", "tail -f /dev/null"]

