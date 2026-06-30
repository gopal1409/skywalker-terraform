#when we create a nic card
#1. it will get private ip from subnet
#2. it will get public ip from public ip resource
#with nic we wannt to have a private ip which i will get it from subnet 
#now i am creating a public ip to be attached with my nic 
#we are ensuring that the public ip will be created first before nic is created
resource "azurerm_network_interface" "web_nic" {
    depends_on = [azurerm_public_ip.web_vm_publiip]
   name                = "${local.resource_name_prefix}-nic"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.web-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.web_vm_publiip.id
  }
}