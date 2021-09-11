<h1> Backup and Disaster Recovery </h1>

   In Lab2a we did the initial deploy of a complete cluster with RKE. We wil learn now how to take a snapshot with *rke snapshot*

<br>

<h3>Generate the cluster yaml file with rke config </h3>


    $rke etcd snapshot snapshot-save 
    --config cluster.yml 
    --name snap_test --ssh-agent-auth


<h3>Check if the snapshot exists </h3>

    $ls  /opt/rke/etcd

<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com