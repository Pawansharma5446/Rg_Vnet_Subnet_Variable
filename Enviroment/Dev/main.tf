module "name" {
source = "../../Module/Resource_group"
resource_group_name = var.resource_group_name
location = var.location
}

module "vnet" {
  source = "../../Module/Vnet"
    vnet_name = var.vnet_name
    address_space = var.address_space
    location = var.location
    resource_group_name = var.resource_group_name
    subnet_name = var.subnet_name
    subnet_address_prefixes = var.subnet_address_prefixes
}