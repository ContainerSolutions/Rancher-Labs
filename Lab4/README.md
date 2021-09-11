<h1> Upgrading a Kubernetes Cluster </h1>

   We will learn how to update the Kubernetes version by editing the cluster.yml
<br>

<h3>Get the file cluster.yml </h3>

Go to the folder where cluster.yml current cluster is currently defined. 



<h3>Get the available Kubernetes versions </h3>

run:

    $ rke config --list-versions -all


<br>

<h3>Update the cluster.yml file </h3>

Find the line where you define the Kubernetes version *(under system images)*,  find *Kubernetes:* ,change it to the desired version. 

*Check for the Arrow ==>*

```yaml
system_images:
  etcd: rancher/mirrored-coreos-etcd:v3.4.15-rancher1
  alpine: rancher/rke-tools:v0.1.78
  nginx_proxy: rancher/rke-tools:v0.1.78
  cert_downloader: rancher/rke-tools:v0.1.78
  kubernetes_services_sidecar: rancher/rke-tools:v0.1.78
  kubedns: rancher/mirrored-k8s-dns-kube-dns:1.15.10
  dnsmasq: rancher/mirrored-k8s-dns-dnsmasq-nanny:1.15.10
  kubedns_sidecar: rancher/mirrored-k8s-dns-sidecar:1.15.10
  kubedns_autoscaler: rancher/mirrored-cluster-proportional-autoscaler:1.8.1
  coredns: rancher/mirrored-coredns-coredns:1.8.0
  coredns_autoscaler: rancher/mirrored-cluster-proportional-autoscaler:1.8.1
  nodelocal: rancher/mirrored-k8s-dns-node-cache:1.15.13
  ==> kubernetes: rancher/hyperkube:v1.20.10-rancher1
  flannel: rancher/mirrored-coreos-flannel:v0.13.0
  flannel_cni: rancher/flannel-cni:v0.3.0-rancher6
  calico_node: rancher/mirrored-calico-node:v3.17.2
  calico_cni: rancher/mirrored-calico-cni:v3.17.2
```

<h3>Proceed with the upgrade</h3>

    $ rke up 
<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com

