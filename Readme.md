# Raspberry PI 3 Installation K3s Installtion

```sh
curl -sfL https://get.k3s.io | sh -

sudo cat /var/lib/rancher/k3s/server/node-token # for agent nodes

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

chmod 700 get_helm.sh


sudo rm -rf /var/lib/rancher/k3s/server/manifests/traefik.yaml
sudo helm uninstall traefik traefik-crd -n kube-system --kubeconfig /etc/rancher/k3s/k3s.yaml
sudo systemctl restart k3s

sudo helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace --kubeconfig /etc/rancher/k3s/k3s.yaml

```

todo -> Use a DNS service that supports multiple A records for your domain.
