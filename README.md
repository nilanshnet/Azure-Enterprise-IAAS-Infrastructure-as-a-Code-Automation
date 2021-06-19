# Infrastructure-as-a-Code (IaC) for Azure resource configurations and deployments
Contains Infrastructure as code - ARM templates and PowerShell scripts to be used for resource deployments on Azure cloud and for automation purposes 


## Available IaC for services and resources by category:

- **Backup and Recovery:**
  Recovery Services Vault for Backup and Site recovery (BCDR)

- **General:**
  Azure Resource Locks

- **Monitor:**
  Log Analytics workspace

- **KeyVault Dev and Ops:**
  Azure Key Vault, Key vault keys, Azure Disk Encryption 

- **Network:**
  Virtual Networks

- **Security:**
  Azure Policies, Virtual Machine extensions

- **Storage:**
  Azure Storage Account, Azure File shares, Blobs, and other storage services


## IaC Automation Catalog using PowerShell and Azure Resource Manager (ARM) Tempalates

1.	Common Resources
  	1. Create and configure
        -	[X] Create Key vault and grant access for disk encryption
        -	[X] Create Log analytics workspace
        -	[X] Setup Recovery Service vault and backup policy for VM backup
        -	[X] Apply Azure Resource lock on business-critical resources
        -	[X] Create Azure policies
            -	[X] Enforce Tags
            -	[X] Enforce Naming convention
            -	[X] Enforce resource deployment location
            -	[X] Stop RDP and SSH access from internet


2.  Compute 
    1. Create and configure
        -	[ ] Create new resource group or use existing
        -	[ ] Create Windows and Linux VMs from Marketplace image
        - [ ] Create Windows and Linux VMs from custom image
        -	[ ] Multiple size options
        -	[ ] Option for Availability Set and Availability Zone
        -	[ ] Dynamic number of data disks
        -	[ ] Option for public IP
        -	[ ] Option for boot diagnostic, use existing or create new storage account
        -	[ ] Enable OS guest diagnostic
        -	[ ] Option to join into Domain
        -	[ ] Option to do disk encryption
        -	[ ] Option to attach to log analytics workspace
        -	[ ] Option to install Microsoft Anti-malware protection
        -	[X] Option to initiate backup

    2. Manage
        -	[ ] Add additional disk to an existing VM
        -	[ ] Do disk encryption for an existing VM
        -	[ ] Attach ad-hoc public IP
        -	[ ] Attach to log analytics workspace
        - [ ] Configure VM Start and Stop
        -	[X] Enable backup on existing VMs

    3.	Security
        -	[X] Apply resource lock on business-critical resources
        -	[X] Option to install Microsoft Anti-malware protection
        -	[ ] Attach to log analytics workspace to connect with Security center and Azure Monitor
        -	[X] Azure Disk Encryption for existing VMs


3. Networking
    1. Create and configure
        -	[X] Hub and Spoke Topology configuration with upto 
        -	[X] Create up to 5 Subnets in hub and spoke Virtual Networks
        -	[ ] Deployment to peer the Hub and Spoke Virtual Networks 
        -	[ ] Deployment to peer Spoke and Spoke Virtual Networks 
        -	[ ] Create Network Security Groups with default rules and attach to subnets

    2.	Manage
        -	[ ] Create 3 additional spoke Virtual Networks and up to 5 subnets
        -	[ ] Peer the Hub and Spoke Virtual Networks after deployment
        -	[ ] Peer Spoke and Spoke Virtual Networks after deployment
        -	[ ] Create additional subnets

    3.	Secure
        -	[ ] Enable standard DDoS for all the Virtual Networks
        -	[ ] Enable Service Endpoints
        -	[ ] Create ad-hoc NSGs with default rules and attach to subnets


4.	Storage

    1.	Create and Configure
        -	[X] Create storage account with performance, Account kind, Replication type and access tier
        -	[X] Define access level with network
        -	[X] Enable secure transfer
        -	[ ] Option for soft delete
        -	[ ] Option to create Blob container, file share, table, and queue

    2.	Manage
        -	[X] Create additional Blob container, file share, table, and queue in existing storage

    3.	Secure
        -	[X] Restrict netowrk access level with specific subnets 
        -	[X] Enable secure transfer
        -	[ ] Enable soft delete
