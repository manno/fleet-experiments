kind: GitRepo
apiVersion: fleet.cattle.io/v1alpha1
metadata:
  name: process-labels
spec:
  repo: https://github.com/manno/fleet-experiments
  branch: datadog-process-label
  targets:
  - clusterSelector:
      matchExpressions:
      - key: provider.cattle.io
        operator: NotIn
        values:
        - harvester
