#!/bin/bash

kubectl create namespace scrapewatch
kubectl apply -f kubernetes --recursive -n scrapewatch
