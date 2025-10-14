# Azure Storage Deployment with Terraform for Torque

This repository contains a Terraform module that provisions an Azure Storage Account with a Blob Container, designed for integration with Quali's Torque platform

---

## Module Structure 
azure-storage-module/
├── main.tf
├── variables.tf
├── outputs.tf


---

##Prerequisites
- Terraform CLI installed
- Azure CLI authenticated (`az login`)
- A Torque account with access to create blueprints and grains
- GitHub repository to host this module

---

```hcl
module "storage" {
  source              = "./azure-storage-module"
  resource_group_name = "example-rg"
  location            = "East US"
  storage_account_name = "examplestorageacct"
  container_name       = "examplecontainer"
}
