# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port on which the server is listening
EXPOSE 3000

# Start the server
CMD [ "node", "app.js" ]