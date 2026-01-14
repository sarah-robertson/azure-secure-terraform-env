# Project: Secure Azure Environment using Terraform (IaC)

## Overview
This project deploys a secure Azure baseline using Terraform, focusing on network segmentation, least-privilege access controls, and centralised logging.

## Architecture
- Resource Group
- Virtual Network (10.10.0.0/16)
- Subnets:
  - snet-app (10.10.1.0/24)
  - snet-mgmt (10.10.2.0/24)
- Network Security Groups:
  - App subnet allows inbound HTTPS (443)
  - Mgmt subnet allows SSH (22) only from admin IP
- Log Analytics Workspace (centralised logging)

## Security choices
- **Network segmentation:** separates application workloads from management/admin zone
- **Least privilege inbound rules:** only required ports are allowed
- **Restricted admin access:** management access limited to a specific IP range
- **Auditability:** Log Analytics enables centralised logs for monitoring and investigations

## How to run
1. `az login`
2. Create `terraform.tfvars`:
   ```hcl
   admin_ip = "YOUR_IP/32"
3. terraform init
4. terraform plan
5. terraform apply

## Diagram
![Architecture](azureSecEnvDiagram.drawio-1.png)