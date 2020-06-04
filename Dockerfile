FROM golang:latest

# Expect a 'port' argument
ARG port

# Set the environment variables within the container
ENV PORT=$port

# Scaffold container directories
RUN mkdir -p /demo

# Copy application code into the the container
ADD . /demo

# Change working directory
WORKDIR /demo

# Build the application
RUN go build -o demo .

# Command to run when starting the container
CMD ["./demo"]
