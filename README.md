# Guide to setup Gitlab Runner using HELM on Kubernetes Cluster (Kubernetes Executor)
Gitlab-CI Runner setup on Kubernetes (Kubernetes Executor)


# Instructions

## Pre-Requisites:
- A Running Kubernetes Cluster
- Helm CLI Tool & Kubernetes Tool
- Helm configured with Tiller



- Installation of Helm on mac-os using brew:
```
    brew install kubernetes-helm
```

- Installation of Kubectl on mac-os using brew:
```
    brew install kubectl

    brew install kubernetes-cli
```

## Steps:

- Creating a separate namespace for the Gitlab-runner
```
    kubectl create namespace gitlab-runner
```
- Creating a Role/Role-Binding sfor the Gitlab-runner namespaces with all the required permission for the namespace
```
    kubectl apply -f role/gitlab-ci-role.yaml

    kubectl apply -f role/gitlab-runner-role-binding.yaml

    kubectl apply -f role/gitlab-runner-service-account.yaml
```

