variable "vnet_name" {
    type = string
    default = "tfvnet"
}

variable vnet_address_space {
    type = string 
    default = "10.0.0.0/16"
}

variable rg_name {
    type = string
    default = "TFRG"
}