# Use the official Ubuntu base image
FROM ubuntu:jammy

# Install any necessary dependencies or packages
RUN apt-get update && \
    apt-get install -y curl sudo

# Set the working directory (optional)
WORKDIR /app

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODELS=/app

RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama server -d && ollamapid=$! && sleep 60 && ollama pull phi3 && kill $ollamapid
# Expose the port the app runs on (optional)
EXPOSE 11434

# Command to run the application
CMD ["ollama serve"]
