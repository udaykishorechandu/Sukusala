# Stage 1: Build the React app
FROM node:18-alpine AS build

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application code into the container
COPY . .

# Build the React app
RUN npm run build

# Stage 2: Serve the built app
FROM node:18-alpine

# Install 'serve' to serve static files
RUN npm install -g serve

# Set the working directory
WORKDIR /app

# Copy the built files from the previous stage
COPY --from=build /app/build .

# Expose the port the app will run on
EXPOSE 3000

# Start the app using 'serve'
CMD ["serve", "-s", ".", "-l", "3000"]
