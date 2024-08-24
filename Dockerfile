# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependency
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 8080 for the app
EXPOSE 8080

# Define the commands to run your app
CMD ["node", "index.js"]
