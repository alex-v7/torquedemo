output "storage_account_name" {
  description = "The name of the Azure Storage Account"
  value       = azurerm_storage_account.storage.id 
}

output "container_name" {
  description = "The name of the Blob Container"
  value       = azurerm_storage_container.container.name
}