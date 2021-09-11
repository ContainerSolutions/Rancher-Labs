<h1> Restoring etcd after a disaster =/  </h1>

   In Lab3 we did the snapshot for a runnning Rancher Cluster. Now,  we wil learn now how to restore a previous taken snapshot with *rke etcd snapshot-restore*

<br>

<h3>Get the cluster.yml file from the previous exercise and get the previous snapshot taken in /opt/rke/etcd-snapshots/ </h3>


    $ rke etcd snapshot snapshot-restore
    --config cluster.yml 
    --name snap_test --ssh-agent-auth

Now, the old cluster is going to be tear down. A new one with the previous configuration will be created. 

<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com
