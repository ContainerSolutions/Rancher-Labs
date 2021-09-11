<h1> Setup a Minimal Cluster - custer.yml provided </h1>

   In Lab1 we did the installation of RKE. RKE is a installer for Rancher RKE distribuition. It install or a list of remote Nodes, or your own machine(local node) 

<br>

<h3>Get the file cluster.yml </h3>


   - change the IP address to *your_ip_address*
   - change the username to *your_username*
   
<br>
Place the cluster.yml file in the right folder

```yaml
nodes:
 - address: <your_ip_address>
   user: <your_username>
   role:
    - controlplane
    - etcd
    - worker 
```
<br>



<h3> Let's make the cluster up and running </h3>

now just run:

    $rke up

<br>

<h3>Remove the Cluster (optional) </h3>


it's time to tear down the allocated resources! 

Inside the project folder, just run:

    $rke remove


<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com

