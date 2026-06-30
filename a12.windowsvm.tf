resource "azurerm_windows_virtual_machine" "web_vm" {

  name                = "${local.resource_name_prefix}-win11vm"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  size = "Standard_D2s_v3"

  admin_username = "azureuser"

  admin_password = data.azurerm_key_vault_secret.vm_password.value

  network_interface_ids = [
    azurerm_network_interface.web_nic.id
  ]

  provision_vm_agent          = true
  enable_automatic_updates    = true

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-11"
    sku       = "win11-25h2-pro"
    version   = "latest"
  }

  tags = local.project_lucky
}
