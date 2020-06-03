FROM golang:latest

# Expect a 'port' argument specifying the service to build
ARG port

# Set the environment variables needed for our container
ENV PORT=$port

# Scaffold container directories
RUN mkdir -p /demo
WORKDIR /demo

# Copy application code into the the container
ADD . /demo

# Build the application
RUN go build -o demo .

# Command to run when starting the container
CMD ["./demo"]
