FROM ollama/ollama
# Install socat
RUN apt-get update && apt-get install -y socat
# Forward traffic from port 8080 to 11434
CMD socat TCP-LISTEN:8080,fork TCP:127.0.0.1:11434 &

ENTRYPOINT []
CMD ["/bin/sh", "-c", "/bin/ollama serve & sleep 15 && /bin/ollama run mistral:instruct & wait"]
