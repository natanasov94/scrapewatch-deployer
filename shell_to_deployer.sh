#!/bin/bash

docker run -it --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ~/.kube/config:/root/.kube/config \
    -p 8080:8080 \
    -p 9090:9090 \
    scrapewatch-deployer /bin/bash
