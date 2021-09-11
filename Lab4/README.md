<h1> Upgrading a Kubernetes Cluster </h1>

   We will learn how to update the Kubernetes version by editing the cluster.yml


<h3>Get the file cluster.yml </h3>

Go to the folder where cluster.yml current cluster is currently defined. 


<h3>Get the available Kubernetes versions </h3>

run:

    $ rke config --list-versions -all


<br>

<h3>Update the cluster.yml with a desired version </h3>

Find the line where you define the *kubernetes_version:*      string in the *cluster.yml* and update the file


<h3>Proceed with the upgrade</h3>

    $ rke up --config cluster.yml
<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com

