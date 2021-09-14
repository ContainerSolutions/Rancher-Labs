<h1> Rotate the cluster certificates </h1>

   From time to times its important to manage certificate rotation. 

Types of Certificate Rotation:
- rke cert rotate
	- Rotate for all kubernetes services
- rke cert rotate --service kubelet (particular service)
	- rorate only for kubelet
- rke cert rotate --rotate-ca    (rotate everything) 
	- rotates the CA  and all the certificates that are tied to it 



<h3>To perform certificate rotation</h3>

just run: 

    $ rke cert --rotate-ca --ssh-agent-auth



<br>
Enjoy your studying time! 

Cheers \o/,

rodrigo.rios@container-solutions.com
