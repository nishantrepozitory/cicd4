# Use the official golang image as the base
FROM golang:latest

# Set the working directory for the application
WORKDIR /app

# Copy the application source code
COPY . .

# RUN go mod download

# Build the application binary
RUN go build -o time-response2 main.go

# Expose port 8080
EXPOSE 8080
