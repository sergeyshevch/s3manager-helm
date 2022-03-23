helm template RELEASE_NAME --values $1/values.yaml --debug . | ./helm-fan-out.sh result
