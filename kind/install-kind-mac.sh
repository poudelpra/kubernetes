
curl -Lo ./kind https://k8s.io
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

cat << 'EOF' > kind-config.yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
EOF


#### creating kind cluster
kind create cluster --name dev-test-field --config kind-config.yaml


######## running metrics server with second command for patching metrics deployemnt to make it work
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl -n kube-system patch deployment/metrics-server --type=json \
  -p '[{"op": "add", "path": "/spec/template/spec/containers/0/args/-", "value": "--kubelet-insecure-tls"}]'
