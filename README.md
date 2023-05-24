# container-app-jobs-examples
Various examples of trigger types for Container App Jobs. This contains examples for running jobs on a local Kubernetes cluster as well as commands using the Azure CLI to deploy to Azure Container Apps.

Each example contains the following directories:
- **local-k8s-deploy**:
    - The `.yaml` in here can be used to deploy to a local Kubernetes cluster. Build the image in the example first, then update the image name in the `.yaml`
    - Replace values as needed, in the `event-driven` example you'll need to provide your Azure Storage Account (blob, container name, connection string) connection string
    - Then run `kubectl apply -f <name_of_yaml>.yaml`.

- **az-cli-deploy**:
    - This file contains a command which can be ran to deploy these examples
    - Ensure the Docker Image in said example is build first, and then deployed to Azure Container Registry
    - Replace the required values in the command as needed.


The examples are as follows:
- `manual`:
    - A PHP application that cURLs to the CoinDesk API and prints a response

- `scheduled`:
    - A Go application that prints the current time

- `event-driven`:
    - A Go application that lists all current containers in the specified Azure Storage Account Container
        - When running the example as a Event Driven Job, the current default is to run when "5" blobs are present. This can be changed as needed.
        - Update to include your Azure Storage Connection String where needed

