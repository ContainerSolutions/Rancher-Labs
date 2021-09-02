#!/usr/bin/env bash


echo "###########################################"
echo "Downloading rke package 1.2.12 from Rancher"
echo "###########################################"
echo " "

if [ -f rke_linux-amd64 ]
then
echo "File is found, Skipping Download.."
echo "" 
else
   echo "File is not found"
   wget --no-check-certificate https://github.com/rancher/rke/releases/download/v1.2.12/rke_linux-amd64
fi


echo -n "\o/"
sleep 1.0
echo -n "_o_"
sleep 1.0
echo -n "\o/"
sleep 1.0
echo -n "_o_"
echo -e


echo "#################################################"
echo "Updating name to rke .. giving it exec permission"
echo "#################################################"
echo " "

echo "mv rke_linux_amd64 rke"
mv rke_linux-amd64 rke
echo "chmod +x rke"
chmod +x rke
echo ""


echo "#################################################"
echo "Moving rke to /usr/local/bin .. needs sudo passwd!"
echo "#################################################"
echo " "

echo "sudo mv rke /usr/local/bin"
sudo mv rke /usr/local/bin


echo -n "\o/"
sleep 1.0
echo -n "_o_"
sleep 1.0
echo -n "\o/"
sleep 2.0
echo -n "_o_"
echo -e "end.."

