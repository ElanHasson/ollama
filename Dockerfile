# Use the official Ubuntu base image
FROM ollama/ollama
# Set the working directory (optional)
WORKDIR /app

RUN ollama serve && curl http://localhost:11434/api/pull -d '{  "name": "llama3"}'
