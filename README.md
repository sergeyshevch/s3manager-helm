# s3manager

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.2.0](https://img.shields.io/badge/AppVersion-0.2.0-informational?style=flat-square)

Chart for s3manager - web GUI for s3

**Homepage:** <https://github.com/sergeyshevch/s3manager-helm>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| sergeyshevch | sergeyshevchdevelop@gmail.com | https://github.com/sergeyshevch |

## Source Code

* <https://github.com/cloudlena/s3manager>

## Installation

```
helm repo add sergeyshevch https://sergeyshevch.github.io/charts
helm upgrate --install sergeyshevch/s3manager-helm RELEASE_NAME
```

## Changelog

### 0.1.0

#### Changes:
- Initial chart version
- Added basic functionality

#### Upgrade guide:
- No special actions required.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| configMap.data | object | `{}` |  |
| configMap.enabled | bool | `true` |  |
| extraContainers | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/sergeyshevch/s3manager"` |  |
| image.tag | string | `"feature_refactoring"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[0].port | int | `80` |  |
| ingress.tls | list | `[]` |  |
| initContainers | list | `[]` |  |
| livenessProbe | object | `{}` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| ports[0].containerPort | int | `80` |  |
| ports[0].name | string | `"http"` |  |
| ports[0].protocol | string | `"TCP"` |  |
| ports[0].servicePort | int | `80` |  |
| readinessProbe | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secret.data | object | `{}` |  |
| secret.enabled | bool | `false` |  |
| securityContext | object | `{}` |  |
| service.additionalPorts | list | `[]` | Same structure as in ports |
| service.enabled | bool | `true` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |

## Development

### How to create new release?
- Update CHANGELOG.md.gotmpl
- Update chart version in `Chart.yaml`
- Make sure that values.schema.json are in actual state
- Update all documentation comments in values.yaml
- Run `make preview` and test that all your changes works correctly
- Run `make` To lint your chart and generate documentation
- Update all component version numbers in ci.yml
- Commit and push your pages
- Create new tag (0.3.2)
- Push new tag
- Update version in values in ci-server repository