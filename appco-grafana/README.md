GitRepo, Helm, and Docker Registry Secrets:

```
kind: GitRepo
apiVersion: fleet.cattle.io/v1alpha1
metadata:
  name: grafana
  namespace: fleet-local
spec:
  repo: https://github.com/manno/fleet-experiments
  branch: main
  helmSecretName: application-collection
  paths:
  - appco-grafana
  targets:
  - clusterSelector: {}

# kubectl create secret generic helm --from-literal=username=<your-username-or-sa-username> --from-literal=password=<access-token-or-sa-token>
---
kind: Secret
apiVersion: v1
metadata:
  name: application-collection
  namespace: fleet-local
data:
  password: ...
  username: ...

# kubectl create secret -n grafana docker-registry application-collection --docker-server=dp.apps.rancher.io --docker-username=<your-username-or-sa-username> --docker-password=<access-token-or-sa-token>
---
apiVersion: v1
kind: Secret
metadata:
  name: application-collection
  namespace: grafana # namespace from fleet.yaml
type: kubernetes.io/dockerconfigjson
data:
  .dockerconfigjson: ...
```
