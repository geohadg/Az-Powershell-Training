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

variable storageaccount-name {
    type = string
    default = "storageaccounttftest"
}

variable storageaccount-kind {
    type = string
    default = "StorageV2"
}

variable access-tier {
    type = string
    default = "Standard"
}

variable replicationtype {
    type = string
    default = "LRS"
}

variable policy-name {
    type = string
    default = "tfpolicy"
}