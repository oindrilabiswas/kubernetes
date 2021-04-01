#To make the worker nodes aware about the master node, type the below command in master node

kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=192.167.10.70

# Now you have 2 option , either you can run in root user or 
# If you want use kubernetes in regular user you have to execute these below commented lines else you use execute 12 and 13 #lines
# To start using your cluster, you need to run the following as a regular user:
# mkdir -p $HOME/.kube
# sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
# sudo chown $(id -u):$(id -g) $HOME/.kube/config
# kubectl apply -f https://docs.projectcalico.org/manifests/canal.yaml


export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f https://docs.projectcalico.org/manifests/canal.yaml


