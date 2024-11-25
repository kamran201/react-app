


# Use a lightweight Node.js image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json /app

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . /app

# Expose the application port (change 3000 to your app's port if necessary)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
