# Use Node.js version 16
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present) for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application source code
COPY . .

# Expose port 4000 for the app
EXPOSE 4000

# Command to run the application
CMD ["npm", "run", "dev"]
