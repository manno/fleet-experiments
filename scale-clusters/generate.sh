#!/bin/bash

# for i in $(seq 1 500); do
#   out="workload$i"
#   mkdir -p "$out"
#   sed "s/workload1/workload$i/" template/fleet.yaml > "$out/fleet.yaml"
#   cp template/cm.yaml "$out/cm.yaml"
# done

for c in $(seq 1 3); do
for i in $(seq 1 500); do
  id="$c-$i"

  cat >> workload/fleet.yaml  <<EOF
- clusterName: test-downstream$id
  namespace: workload$id
EOF

done
done
