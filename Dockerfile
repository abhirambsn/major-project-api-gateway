# Use the official NGINX image as the base image
FROM nginx:latest

# Copy the nginx.conf file to the appropriate location
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/api_backends.conf /etc/nginx/api_backends.conf
COPY ./conf/api_json_errors.conf /etc/nginx/api_json_errors.conf
COPY ./conf/api_gateway.conf /etc/nginx/api_gateway.conf
COPY ./web/index.html /usr/share/nginx/html/index.html
COPY ./web/bg.jpg /usr/share/nginx/html/bg.jpg

# Expose the necessary ports
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]