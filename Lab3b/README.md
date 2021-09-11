<h1> Backup to S3 Bucket and Disaster Recovery  </h1>

   In Lab3 we did the snapshot for a runnning Rancher Cluster. Now, We wil learn now how to the same backup to an AWS S3 Bucket.
   
<br>

<h3>Get the cluster.yml file from the previous exercise and get the previous snapshot taken in /opt/rke/etcd-snapshots/ </h3>


    $ rke etcd snapshot snapshot-save
    --config cluster.yml 
    --name snap_test --ssh-agent-auth
    --s3 
    --access-key $ACCESS_KEY
    --secret-key $SECRET_KEY
    --bucket-name <my-bucket-name>
    --folder <folder-name>
    --s3-endpoint <s3-address>  --ssh-agent-ssh


*The procedure will also create the same snapshot locally in /opt/rke/etcd-snapshot*

<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com
