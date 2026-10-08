# Use the official production-ready, lightweight Nginx alpine base image
FROM nginx:alpine

# Remove any default static files served by Nginx to avoid conflicts
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom profile web page into the container's Nginx public root folder
COPY index.html /usr/share/nginx/html/index.html

# Inform Docker that the container listens on port 80 at runtime
EXPOSE 80

# Start Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]
