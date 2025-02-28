# Deployment steps

## Definition of completion

- Gather requirements - Understand dependencies
- Generate configutations - Terraform / Kubernetes manifests
- Deploy - to AWS and Kubernetes
- Observability - Monitoring and Alerting

## Steps

- Build & push docker image to ECR -  Github action
- Deploy Kustomize manifests to Kubernetes


## Task

- Docker Build & Push
  1. Detect changes
    - checkout repository
    - Identify changed files in apps directory
    - Get the directory name of the app
    - Collect the changed apps directory names in github action matrix and register as output
  2. Docker build
    - Login to AWS
    - ECR Login
    - Docker build for apps - loop through changed directories from step above
    - Docker tag with ECR repo and push
