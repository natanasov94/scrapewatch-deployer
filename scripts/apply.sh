#!/bin/bash

kubectl create namespace scrapewatch

# Deploy services
kubectl apply -f kubernetes/scrapewatch --recursive -n scrapewatch
helm install elasticsearch kubernetes/elasticsearch -n scrapewatch
helm install filebeat kubernetes/filebeat -n scrapewatch
helm install metricbeat kubernetes/metricbeat -n scrapewatch
helm install logstash kubernetes/logstash -n scrapewatch
helm install kibana kubernetes/kibana -n scrapewatch