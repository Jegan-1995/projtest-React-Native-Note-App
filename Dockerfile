# Use the official Node.js image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the app files to the container
COPY . .

# Build the React Native app (adjust this command based on your project)
RUN npm run build

# Command to start the app when the container runs
CMD ["npm", "start"]

