resource "azurerm_public_ip" "web_vm_publiip" {
  name                = "${local.resource_name_prefix}-publicip"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  allocation_method   = "Static"
  sku                 = "Standard" #basic #premium

    tags = local.project_lucky
}