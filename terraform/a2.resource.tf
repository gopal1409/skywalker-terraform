# Create a resource group
resource "azurerm_resource_group" "myrg" {
  name = "${local.resource_name_prefix}-${var.resource_group_name}" #sap-dev-gopal-rg
  #business division + environment + name of the resource group
  location = var.resource_group_location

  tags = local.project_lucky


}

