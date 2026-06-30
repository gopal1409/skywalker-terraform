
resource "azurerm_virtual_network" "vnet" {
  name                = "gopal-network"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = ["10.0.0.0/16"]
  #geeting the refrence from tfstate file
 tags = local.project_lucky
}