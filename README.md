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

# Torque Blueprint Deployment Checklist

This document serves as a structured checklist and evidence log for deploying a blueprint using Quali's Torque platform.

---

##Blueprint Information

- **Blueprint Name**: `azure-storage-blueprint`
- **Grain Type**: Terraform
- **Module Path**: `https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account`
- **Repository**: [https://github.com/alex-v7/torquedemo.git]
- **Cloud Provider**: Azure

---

##Deployment Steps

### 1. Blueprint Creation
- [x] Created new blueprint in Torque
- [x] Added Terraform grain from connected Git repo
- [x] Configured input variables:
  - `resource_group_name`
  - `location`
  - `storage_account_name`
  - `container_name`
- [x] Added Azure credentials via Torque Secrets
- [x] Saved and published blueprint

---

### 2. Environment Launch
- [x] Launched environment from blueprint
- [x] Provided required inputs and secrets
- [x] Monitored launch logs

---

## Launch Logs

> Screenshot of launch logs showing Terraform execution steps:
> ![Launch Logs Screenshot](screenshots/launch_logs.png)
<img width="975" height="506" alt="image" src="https://github.com/user-attachments/assets/198b6667-77e7-4f87-a61c-fdcbce83b348" />


---

## Environment Status

> Screenshot of environment status showing successful deployment:
> ![Environment Status Screenshot](screenshots/environment_status.png)

---

## Provisioned Resource Verification

> Screenshot from Azure Portal showing the created Storage Account and Blob Container:
> ![Azure Resource Screenshot](screenshots/azure_resources.png)

---

## Outputs

- `storage_account_name`: `use2d3storage`
- `container_name`: `emergencylandingpage`

---

## Notes & Observations

- [ ] Storage account name must be globally unique
- [ ] Terraform module initialized with `terraform init`
- [ ] Azure credentials securely stored in Torque Secrets

---

## Screenshot Checklist

| Screenshot Type         | Included |
|-------------------------|----------|
| Launch Logs             | ✅        |
| Environment Status      | ✅        |
| Azure Resource          | ✅        |

---
## Issues experienced during buildout:
-	Error installing the Torque Kubernetes agent on my local PC
-	Problems connecting Quali to the GitHub repository
-	Credential issue: using my email instead of setting up a service account name for repository access
-	Deploying a blueprint to my Azure subscription
-	Instances of unclear or inaccurate error messages

---
## Submission

- [x] GitHub Repo Link: [https://github.com/alex-v7/torquedemo.git]
- [x] README and Terraform files
- [x] Screenshots uploaded to `screenshots/` folder



