# Use the official Ubuntu base image
FROM ollama:latest
# Set the working directory (optional)
WORKDIR /app

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODELS=/app

RUN ollama serve & ; sleep 10 && ollama pull phi3

# Expose the port the app runs on (optional)
EXPOSE 11434

# Command to run the application
CMD ["ollama serve"]
