# Use the official Ubuntu base image
FROM ollama/ollama
# Set the working directory (optional)
WORKDIR /app

RUN ollama serve & ; sleep 10 && ollama pull phi3

# Expose the port the app runs on (optional)
EXPOSE 11434

# Command to run the application
CMD ["ollama serve"]
