
# Use the official nginx image
FROM nginx:1.19.0-alpine as build

# Copy nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files to be served
COPY app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

