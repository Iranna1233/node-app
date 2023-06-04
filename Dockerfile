# Specify the base image
FROM registry.access.redhat.com/ubi8/nodejs-16-minimal

# Set the working directory nside the container
WORKDIR /app

# Copy package.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port
EXPOSE 3000

# Start the application
CMD [ "node", "app.js"]
