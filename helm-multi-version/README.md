```yaml
kind: GitRepo
apiVersion: fleet.cattle.io/v1alpha1
metadata:
  name: helm
  namespace: fleet-local
spec:
  repo: https://github.com/manno/fleet-experiments
  branch: target-customization-split-bundles
  paths:
  - helm-multi-version
  # target all clusters in fleet-local
  targets:
  - clusterSelector: {}
```
