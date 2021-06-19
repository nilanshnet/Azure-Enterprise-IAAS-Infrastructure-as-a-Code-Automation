# Infrastructure-as-a-Code
Contains Infrastructure as code ARM templates and PowerShell scripts to be used for Enterprise infrastructure deployments on Azure for automation purposes 

## IaC by Category using PowerShell and Azure Resource Manager Tempalates

### Backup and Recovery


## General IaC Automation Catalog

1.	Common Resources
  	1. Create and configure 
      -	[ ] Create Key vault and grant access for disk encryption
      -	[ ] Create Log analytics workspace
      -	[ ] Setup Recovery Service vault and backup policy for VM backup
      -	[ ] Apply resource lock on business-critical resources
      -	[ ] Create Azure policies
      -	[ ] Enforce Tags
      -	[ ] Enforce Naming convention
      -	[ ] Enforce resource deployment location
      -	[ ] Stop RDP and SSH access from internet


2	Compute 
  2.1	Create and configure
    -	Create new resource group or use existing
    -	Create Windows and Linux VMs from Marketplace image
    -	Create Windows and Linux VMs from custom image
    -	Multiple size options
    -	Option for Availability Set and Availability Zone
    -	Dynamic number of data disks
    -	Option for public IP
    -	Option for boot diagnostic, use existing or create new storage account
    -	Enable OS guest diagnostic
    -	Option to join into Domain
    -	Option to do disk encryption
    -	Option to attach to log analytics workspace
    -	Option to install Microsoft Anti-malware protection
    -	Option to initiate backup

   2.2	Manage
    -	Add additional disk to the VM
    -	Do disk encryption to the VM
    -	Attach ad hoc public IP
    -	Attach to log analytics workspace
   	- Configure VM Start and Stop
    -	Enable backup on existing VMs

  2.3	Security
    -	Apply resource lock on business-critical resources
    -	Option to install Microsoft Anti-malware protection
    -	Attach to log analytics workspace to connect with Security center and Azure Monitor
    -	Apply resource lock on business-critical resources


3	Networking

3.1	Create and configure
•	Hub and Spoke Topology configuration
•	Create Hub and up to 5 Spoke Virtual Networks
•	Create up to 5 Subnets in hub and spoke Virtual Networks
•	Deployment to peer the Hub and Spoke Virtual Networks 
•	Deployment to peer Spoke and Spoke Virtual Networks 
•	Create Network Security Groups with default rules and attach to subnets

3.2	Manage
•	Create 3 additional spoke Virtual Networks and up to 5 subnets
•	Peer the Hub and Spoke Virtual Networks after deployment
•	Peer Spoke and Spoke Virtual Networks after deployment
•	Create additional subnets

3.3	Secure
•	Enable standard DDoS for all the Virtual Networks
•	Enable Service Endpoints
•	Create ad-hoc NSGs with default rules and attach to subnets


4	Storage

4.1	Create and Configure
•	Create storage account with performance, Account kind, Replication type and access tier
•	Define access level with network
•	Enable secure transfer
•	Option for soft delete
•	Option to create Blob container, file share, table, and queue

4.2	Manage
•	Create additional Blob container, file share, table, and queue in existing storage

4.3	Secure
•	Enable access level with n/w
•	Enable secure transfer
•	Enable soft delete
