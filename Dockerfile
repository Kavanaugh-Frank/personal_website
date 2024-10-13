# Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML files, CSS file, and images into the Nginx directory
COPY index.html ./
COPY style.css ./
COPY images/ ./images/

# Copy the custom nginx.conf into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for the web server
EXPOSE 8080:80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]