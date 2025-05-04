# Use an official Nginx image as the base image
FROM nginx

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 8080
