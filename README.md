# k0s-config

[![Super-Linter](https://github.com/caseyrobb/k0s-gitops/actions/workflows/super-linter.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

My k0s homelab config hosted on a Minisforum NAB9.  

1. Install CentOS Stream 9 w/ansible
2. Run `node-setup.sh`
3. Run `bootstrap-k0s.sh`

## Applications

- ECK Operator
- pf Firewall/Gateway Dashboard (ELK stack)
- democratic-csi
- Jellyfin
- Komga
- Vault
- Keycloak
- Longhorn
- Metallb
- Paperless-ngx
- Prometheus operator w/Grafana
- sealed-secrets
- Tekton operator
- Traefik
- Uptime Kuma
- Vaultwarden
- Velero
- jetstack/version-checker

## GitOps Directory Structure

```shell
components/argocd - ArgoCD Application manifests
components/apps - App/Services manifests


├── ansible
│  ├── files
│  │  └── k0s.yaml
│  ├── inventory
│  └── playbook.yml
├── bootstrap
│  ├── argocd
│  │  └── ...
│  ├── longhorn
│  │  └── ...
│  ├── metallb
│  │  └── ...
│  └── traefik
│     └── ...
├── components
│  ├── apps
│  └── argocd
├── bootstrap-k0s.sh
└── node-setup.sh
```

![alt text](https://raw.githubusercontent.com/caseyrobb/k0s-gitops/master/assets/images/argocd.png)
