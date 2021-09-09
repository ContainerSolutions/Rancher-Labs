<h1> Setups a Minimal Cluster - custer.yml provided </h1>

   In Lab1 we did the installation of RKE. RKE is a installer for Rancher RKE distribuition. It install or a list of remote Nodes, or your own machine(local node) 

<h3>Get the file cluster.yml </h3>


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


<h3>Place the cluster.yml file in the right folder:</h3>

        $rke up
