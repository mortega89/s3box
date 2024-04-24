# Usa l'immagine ufficiale di Ubuntu 22.04 come base
FROM ubuntu:22.04

# Aggiorna i repository e installa curl e s3cmd
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y s3cmd && \
    apt-get install -y vim && \
    apt-get install -y less && \
    rm -rf /var/lib/apt/lists/*

# Comando di default all'avvio dell'immagine
CMD ["/bin/bash"]
