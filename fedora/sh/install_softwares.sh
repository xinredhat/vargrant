#! /bin/bash

sudo yum -y install podman yamllint golang tree skopeo jq

sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/local/bin/yq
sudo chmod +x /usr/local/bin/yq

sudo wget "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -O /usr/local/bin/kubectl
sudo chmod +x /usr/local/bin/kubectl

wget -O "/tmp/ocp-client.tar.gz"  https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.11.9/openshift-client-linux.tar.gz
tar -C "/tmp" -xzf "/tmp/ocp-client.tar.gz"  oc
sudo mv /tmp/oc /usr/local/bin/oc
