sudo apt-get update 
sudo apt-get install lxc
sudo apt-get install lxd
lxd init # Name of the storage backend to use (btrfs, dir, lvm) [default=btrfs]: dir , rest all are defaults
lxc profile create k8s
cat k8s-profile-config | lxc profile edit k8s
lxc profile list
lxc launch ubuntu:20.04 kmaster --profile k8s
lxc launch ubuntu:20.04 kworker1 --profile k8s
lxc list
cat bootstrap-kube.sh | lxc exec kmaster bash
cat bootstrap-kube.sh | lxc exec kworker1 bash
lxc exec kmaster bash
kubectl get nodes
kubectl cluster-info

mkdir ~/.kube

lxc file pull kmaster/etc/kubernetes/admin.conf ~/.kube/config

ls -l ~/.kube

