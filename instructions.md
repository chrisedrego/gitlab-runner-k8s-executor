# Instructions

- Having Kubernetes Cluster setup
- Having Helm Configured an setup

- Creating a separate namespace for the Gitlab-runner
    > kubectl create namespace gitlab-runner
- Creating a Role for the Gitlab-runner namespaces with all the required permission for the namespace
- Creating a RoleBinding to bind the Gitlab-runner Role to the Service Account for the Gitlab-runner


> helm init
> helm install --namespace gitlab-runner --name gitlab-runner -f values.yaml gitlab/gitlab-runner