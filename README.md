# k0s-config

My k0s homelab config hosted on a Minisforum NAB9.  

1. Install CentOS Stream 9 w/ansible
2. Run `node-setup.sh`
3. Run `bootstrap-k0s.sh`

## GitOps Directory Structure

```
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
