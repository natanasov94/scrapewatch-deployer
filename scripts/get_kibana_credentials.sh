echo "Username: $(kubectl get secrets \
    --namespace=scrapewatch \
    elasticsearch-master-credentials \
    -ojsonpath='{.data.username}' | base64 -d)"
echo "Password: $(kubectl get secrets \
    --namespace=scrapewatch \
    elasticsearch-master-credentials \
    -ojsonpath='{.data.password}' | base64 -d)"