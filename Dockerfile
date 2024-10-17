# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the HTML file(s) into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
