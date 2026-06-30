#in this data block we are calling the vault
data "azurerm_key_vault" "existing_kv" {
  name                = "gopal-vault"     #change it to your name of the vault 
  resource_group_name = "gopal-win-vault" #change it to your resource group name of the vault
}

output "vault_uri" {
  value = data.azurerm_key_vault.existing_kv.vault_uri
}

#second we need to call the secret from the vault
data "azurerm_key_vault_secret" "vm_password" {
  name         = "win-pass" #change it
  key_vault_id = data.azurerm_key_vault.existing_kv.id
}