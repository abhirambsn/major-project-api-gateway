# Use the official NGINX image as the base image
FROM nginx:latest

# Copy the nginx.conf file to the appropriate location
COPY ./conf/*.conf /etc/nginx/
COPY ./web/* /usr/share/nginx/html/

# Expose the necessary ports
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]