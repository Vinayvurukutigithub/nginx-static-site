# Use the official Nginx base image
FROM nginx:alpine

# Remove default index.html
RUN rm -rf /usr/share/nginx/html/*

# Copy custom HTML file into Nginx's web directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

