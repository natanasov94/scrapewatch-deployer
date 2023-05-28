# Scrapewatch deployer
University thesis where that implements a basic web scraper/crawler java api, and deploys it using a local kubernetes cluster.

In addition to the service, the goal is to have auditing with:
- Prometheus
- ELK stack
    - Filebeat
    - Logstash
    - Kibana

# Steps to start up the service
- Prerequisites
    - Docker
    - Minikube

1. Start up docker
2. Start minikube via `minikube start`
3. Run `apply.sh`
    - This will get all docker images and deploy all services under the namespace `scrapewatch`

# Steps that were taken for the full implementation

This is just a section to keep track of all steps taken for the implementation, so it can be referenced later

## Implementing the api `Scrapewatch`
First step was creating a docker dev container to be able to develop java apps without installing java or any IDE. This makes it easy to develop java apps in Visual Studio Code

The java application is an extremely basic springboot application, nothing special to mention there.
See: https://github.com/natanasov94/scrapewatch

- [Dockerfile](https://github.com/natanasov94/scrapewatch/blob/main/Dockerfile)
- [devcontainer.json](https://github.com/natanasov94/scrapewatch/blob/main/.devcontainer/devcontainer.json)

All versions of the docker image are pushed to [Scrapewatch dockerhub](https://hub.docker.com/repository/docker/natanasov1994/scrapewatch)

## Kubernetes cluster
The kubernetes cluster is assumed running on the docker desktop kubernetes cluster. This was the easiest integraiton that could be done to get a `kubectl` working from within a docker container

## Prometheus

