# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your Nginx configuration file to the container (optional, if you have custom configurations)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8081 on the container
EXPOSE 8081

# Optionally, you can copy your website content into the container
COPY . /usr/share/nginx/html

# Make sure the default Nginx config listens on port 8081
RUN sed -i 's/listen       80;/listen       8081;/' /etc/nginx/conf.d/default.conf

