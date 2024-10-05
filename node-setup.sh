#!/bin/bash

K0S_VER=$(curl -L -s https://docs.k0sproject.io/stable.txt)
K0S_URL="https://github.com/k0sproject/k0s/releases/download/$K0S_VER/k0s-$K0S_VER-amd64"

KUBECTL_VER=$(curl -L -s https://dl.k8s.io/release/stable.txt)
KUBECTL_URL="https://dl.k8s.io/release/$KUBECTL_VER/bin/linux/amd64/kubectl"

ansible-playbook \
  --skip-tags reset \
  -i ansible/inventory \
  -e k0s_url="$K0S_URL" \
  -e kubectl_url="$KUBECTL_URL" \
  ansible/playbook.yml
