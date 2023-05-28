#!/bin/bash

docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ~/.kube/config:/root/.kube/config \
    scrapewatch-deployer /scripts/$1.sh
