# EVPN DCI interconnect over OSPF underlay </br>
Generic network core for a rack-2-rack VxLAN EVPN 

Tha main point of this space is not the Ansible script, rather the Network configuration and possible replication of it.

Lab includes:

ACCESS</br>
Switch pair with MCLAG </br> 
LAG ports for Server attached (hosts are OS10)</br>
Hosts exchange traffic on vlan 101 -> vni 101 over LAG ports

FABRIC</br>
2X Racks </br>
L3 Fabric with OSPF P2P </br>
VxLAN/EVPN overlay (Symetric IRB) - RACK-2-RACK direct connection </br>
1x TENANTS, multiple VNI </br>

DCI</br>
Spine-2-Spine are back to back connected with OSPF </br>
Spine are generic Network device not EVPN/VxLAN aware  </br>



![topology](https://github.com/val3r1o/dci-evpn-generic-core/blob/b19c3e7926120cf7b278dd2143dfc32fb36548e7/topology.jpg)



NOTES:
./ Backup.sh 
Backup script to lunch the back up and sync on git</br>
This is to be used under source ~/opt/dellos10env/bin/activate virtual ENV </br>
Please review https://github.com/val3r1o/startupdellos10ansible to create control node right way </br>
Ansible Palybook (copyconfig.yml) to keep back up of full fabric (inventory) configuration on /configs</br>
Topology represent the scenario on GNS3. Dell SmartFabric OS10.5.2.3 </br>
