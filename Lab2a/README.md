<h1> Setup a Cluster with rke config - </h1>

   In Lab2 we did the initial deploy of a minimal cluster with RKE. Now, we will setup a cluster with *rke config*

<br>

<h3>Generate the cluster yaml file with rke config </h3>


    $rke config


Fill with the Folowing options:  

*Attention: your local IP may not be 192.168.0.8*  

```
[+] Cluster Level SSH Private Key Path [~/.ssh/id_rsa]: 
[+] Number of Hosts [1]: 
[+] SSH Address of host (1) [none]: 192.168.0.8
[+] SSH Port of host (1) [22]: 
[+] SSH Private Key Path of host (192.168.0.8) [none]: 
[-] You have entered empty SSH key path, trying fetch from SSH key parameter
[+] SSH Private Key of host (192.168.0.8) [none]: 
[-] You have entered empty SSH key, defaulting to cluster level SSH key: ~/.ssh/id_rsa
[+] SSH User of host (192.168.0.8) [ubuntu]: 
[+] Is host (192.168.0.8) a Control Plane host (y/n)? [y]: y
[+] Is host (192.168.0.8) a Worker host (y/n)? [n]: y
[+] Is host (192.168.0.8) an etcd host (y/n)? [n]: y
[+] Override Hostname of host (192.168.0.8) [none]: 
[+] Internal IP of host (192.168.0.8) [none]: 
[+] Docker socket path on host (192.168.0.8) [/var/run/docker.sock]: 
[+] Network Plugin Type (flannel, calico, weave, canal, aci) [canal]: 
[+] Authentication Strategy [x509]: 
[+] Authorization Mode (rbac, none) [rbac]: 
[+] Kubernetes Docker image [rancher/hyperkube:v1.20.10-rancher1]: 
[+] Cluster domain [cluster.local]: 
[+] Service Cluster IP Range [10.43.0.0/16]: 
[+] Enable PodSecurityPolicy [n]: 
[+] Cluster Network CIDR [10.42.0.0/16]: 
[+] Cluster DNS Service IP [10.43.0.10]: 
[+] Add addon manifest URLs or YAML files [no]: 
```


<br>


<h3>Make the cluster up and running </h3>

just run:

    $rke up


<br>

<h3>Testing the Cluster </h3>

Now that the cluter is deployed, you need to point the right kubeconfig file to it. Run this command against the Cluter to return Pods in All namespaces:

    $kubectl --kubeconfig kube_config_cluster.yml get pods -A

<br>

<h3>Remove the Cluster (optional) </h3>

Inside the project folder, just run:

    $rke remove


<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com