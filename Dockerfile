# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your multiplayer game server listens on
EXPOSE 3000

# Command to run the server
CMD ["node", "backend.js"]
