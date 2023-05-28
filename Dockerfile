FROM debian:10.13-slim

RUN apt-get update -y && \ 
    apt-get upgrade -y && \
    apt-get install curl iputils-ping -y
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
RUN echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

COPY scripts /scripts
COPY kubernetes /kubernetes