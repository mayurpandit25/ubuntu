FROM amazonlinux
RUN yum update -y && yum install nginx -y
EXPOSE 80
CMD ["nginx","-c","daemon off;"]
