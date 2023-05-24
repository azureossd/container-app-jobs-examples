az containerapp job create \
    --name "m-job" --resource-group "your-rg" --environment "your-ca-env" \
    --trigger-type "Manual" \
    --replica-timeout 60 --replica-retry-limit 1 --replica-completion-count 1 --parallelism 1 \
    --image "youracr.azurecr.io/container-app-jobs-examples-manual:latest" \
    --registry-password "0000000000000000000000000000000000000000000" \
    --registry-username "youracr" \
    --registry-server "youracr.azurecr.io" \
    --cpu "0.25" --memory "0.5Gi"

# Start the job
az containerapp job start --name "m-job" --resource-group "your-rg"