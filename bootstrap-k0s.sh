#!/bin/bash

alias kubectl='k'


curl -sSLf https://get.k0s.sh | sudo sh

sudo k0s install controller -c /etc/k0s/k0s.yaml --single
sudo systemctl daemon-reload 
sudo k0s start

printf "Waiting for k0s to start..."
sleep 30
printf "Done\n"

# MetalLB
k create -f bootstrap/metallb/metallb.yaml

# Longhorn
k create -f bootstrap/longhorn/longhorn-ingressroute.yaml

# Traefik
k create -f bootstrap/traefik/wildcard-tls.yaml
k create -f bootstrap/traefik/tlsstore.yaml

# ArgoCD
k create namespace argocd
k apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
k apply -f bootstrap/argocd/argocd-ingressroute.yaml
k apply -f bootstrap/argocd/argocd-cmd-params-cm.yaml
k apply -f bootstrap/argocd/argocd-rbac.yaml
