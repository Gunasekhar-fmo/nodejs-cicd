# Use the official Node.js image.
FROM node:lts-alpine

# Set the working directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of your application code.
COPY . .

# Expose the application port.
EXPOSE 3000

# Command to run your application.
CMD [ "node", "index.js" ]