FROM node
RUN apt-get update && \
    apt-get install -y \
    rsync \
    vim && \
    rm -rf /var/lib/apt/lists/*
RUN npm install -g --production --unsafe-perm resin-cli 
CMD ["/bin/bash"]
