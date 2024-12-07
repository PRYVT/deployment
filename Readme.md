# Raspberry PI 3 Installation K3s Installtion

```sh
curl -sfL https://get.k3s.io | sh -

sudo cat /var/lib/rancher/k3s/server/node-token # for agent nodes

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

chmod 700 get_helm.sh

sudo kubectl -n kube-system delete helmcharts.helm.cattle.io traefik

sudo helm repo add nginx-stable https://helm.nginx.com/stable

sudo helm repo update

sudo rm -rf /var/lib/rancher/k3s/server/manifests/traefik.yaml
sudo helm uninstall traefik traefik-crd -n kube-system --kubeconfig /etc/rancher/k3s/k3s.yaml
sudo systemctl restart k3s

```
