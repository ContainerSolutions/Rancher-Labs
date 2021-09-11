<h1> Backup and Disaster Recovery </h1>

   In Lab2a we did the initial deploy of a complete cluster with RKE. We wil learn now how to take a snapshot with *rke etc snapshot-save*


<h3>Get the cluster.yml file from the previous exercise </h3>


    $ rke etcd snapshot snapshot-save
    --config cluster.yml 
    --name snap_test --ssh-agent-auth


<h3>Check if the snapshot exists </h3>

    $ ls  /opt/rke/etcd-snapshots/

<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com
