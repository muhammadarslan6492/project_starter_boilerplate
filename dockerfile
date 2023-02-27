# Specify the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app files to the working directory
COPY . .

# Set environment variables if needed
ENV PORT=3000

# Expose the port that the app will run on
EXPOSE ${PORT}

# Start the app
CMD [ "npm", "run", "dev" ]
