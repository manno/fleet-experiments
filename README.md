
# informations
rancher management 2.6.5 rke2 v1.21.7+rke2r1
4 clusters v1.22.9+rke2r2
2 Cluster groups : dev and test
in each groupe 2 clusters


# test KO

```bash
# kubectl apply -f fleet-helm_KO.yaml
```
after few minutes, rancher delete pod and pvc and try to restart without pvc.
I think the path is too long.

# test OK
I shorten the path
```bash
# kubectl apply -f fleet-helm_KO.yaml
```
