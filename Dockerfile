# Use an official Nginx image as a base
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80:8082

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
