export KUBERNETES_PROVIDER=vagrant
curl -sS https://get.k8s.io | bash

cd kubernetes

export KUBERNETES_PROVIDER=vagrant
./cluster/kube-up.sh

export NUM_NODES=2

export VAGRANT_DEFAULT_PROVIDER=parallels
export KUBERNETES_PROVIDER=vagrant
./cluster/kube-up.sh