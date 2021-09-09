<h2> Setups a Minimal Cluster - custer.yml provided </h2>

1. In Lab1 we did the installation of RKE. RKE is a installer for Rancher RKE distribuition. It install or a list of remote Nodes, or your own machine(local node)

2. Get the file cluster.yml 


   - change the IP address to *your_ip_address*
   - change the username to *your_username*
   
```yaml
   nodes:
    - address: <your_ip_address>
      user: <your_username>
      role:
        - controlplane
        - etcd
        - worker 
```





1. Place the cluster.yml file in the right folder:

        $rke up
