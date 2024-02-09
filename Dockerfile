# Start with the official Kali Linux base image
FROM kalilinux/kali-rolling


# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Make sure the entrypoint script is executable and move it to a global location
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Install any needed packages specified in package.json
RUN npm install

# Expose the port your app runs on
EXPOSE 3000

# Use the entrypoint script to initialize the container environment
ENTRYPOINT ["docker-entrypoint.sh"]

# Set the default command to run your application
CMD ["node", "server.js"]
