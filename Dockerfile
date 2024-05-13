# Use the official Ubuntu base image
FROM ubuntu:jammy

# Install any necessary dependencies or packages
RUN apt-get update && \
    apt-get install -y curl sudo

# Set the working directory (optional)
WORKDIR /app
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama pull phi3
RUN ollama pull llama3
# Expose the port the app runs on (optional)
EXPOSE 11434

# Command to run the application
CMD ["ollama serve"]
