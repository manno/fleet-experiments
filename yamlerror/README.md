helm template uses nil variables, no bundle created

fleet-controller logs:

time="2022-10-21T12:40:40Z" level=error msg="error syncing 'fleet-local/cluster-labels-test-examples': handler bundle: YAML parse error on simple-chart/templates/configmap.yaml: error converting YAML to JSON: yaml: line 9: did not find expected key, requeuing"
