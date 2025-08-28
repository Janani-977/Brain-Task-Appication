# Use Node.js Alpine image for a lightweight container
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy the static files into container
COPY dist/ /app

# Install http-server globally
RUN npm install -g http-server

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["http-server", "-p", "3000"]