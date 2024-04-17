# Use the official NGINX image as the base image
FROM nginx:latest

# Copy the nginx.conf file to the appropriate location
COPY nginx.conf /etc/nginx/nginx.conf
COPY api_backends.conf /etc/nginx/api_backends.conf
COPY api_json_errors.conf /etc/nginx/api_json_errors.conf
COPY api_gateway.conf /etc/nginx/api_gateway.conf
COPY index.html /usr/share/nginx/html/index.html
COPY bg.jpg /usr/share/nginx/html/bg.jpg

# Expose the necessary ports
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]