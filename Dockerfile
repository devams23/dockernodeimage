# Use the official Node.js image from the Docker Hub
FROM node:18-alpine

#set the working directory
WORKDIR /the/workdir/path
# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that your app will run on
EXPOSE 8000

# Define the command to run your app
ENTRYPOINT ["node", "index.js"]