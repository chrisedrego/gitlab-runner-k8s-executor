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

- Installation of Kubernetes on Windows using choco Package Manager
```
    choco install kubernetes-helm
```


## Creating Service Account, Namespace, Role & Role Binding:

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


## Configure Helm

- Create tiller Service Account

```
    kubectl -n kube-system create serviceaccount tiller
```

- Create ClusterRolebinding 
```
    kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
```

- Intialize Helm
```
    helm init --service-account tiller
```


- You have non of the pre-requiste software installed on the your machine you can run the bash script under the script folder which will automatically install all the required software.

