variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}
variable "vnet_cidr" {
  type = list(string)
}
variable "snet_name" {
  type    = list(string)
  default = ["snet-devlab03-1", "snet-devlab-03-2"]
}

variable "nsg_name" {
  type = string
}

variable "nsg_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "pip_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "vm_count" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "sku_size" {
  type = string
}

variable "tags" {
  type = map(any)
}
