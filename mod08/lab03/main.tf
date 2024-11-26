module "vm-linux" {
  source = "./vm-linux"
  
rg_name = var.rg_name
location = var.location
vnet_name = var.vnet_name
vnet_cidr = var.vnet_cidr
snet_name = var.snet_name
nsg_name = var.nsg_name
nsg_rules = var.nsg_rules
pip_name = var.pip_name
nic_name = var.nic_name
vm_count = var.vm_count
vm_name = var.vm_name
sku_size = var.sku_size
tags = var.tags
  
}