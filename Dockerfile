FROM ollama/ollama:latest

ENTRYPOINT []
CMD ["/bin/sh", "-c", "/bin/ollama serve & sleep 15 && /bin/ollama run mistral:instruct & wait"]
