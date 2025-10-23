FROM ubuntu:latest
RUN sudo apt install apache2  -y
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
