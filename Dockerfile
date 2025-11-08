# Use Ubuntu as the base image
FROM ubuntu:latest

# Update packages and install Apache
RUN apt-get update -y && apt-get install -y apache2

# Copy your local files into the container (optional)
COPY index.html /var/www/html/

# Expose port 80 to access Apache
EXPOSE 80

# Start Apache when the container runs
CMD ["apachectl", "-D", "FOREGROUND"]
