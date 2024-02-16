FROM ollama/ollama:latest

RUN /bin/sh -c "/bin/ollama serve & sleep 1 && ollama pull mistral:instruct"

ENTRYPOINT ["/bin/ollama"]

CMD ["serve"]
