module "dev_vm" {
  source                     = "../../modules/vm"
  enviroment                 = "dev"
  MAIL_SECRET_KEY            = var.MAIL_SECRET_KEY
  MAIL_USER                  = var.MAIL_USER
  MAIL_SERVICE               = "gmail"
  user                       = "adminuser"
  DOMAIN                     = var.DOMAIN
  resource_group             = "IN-RG-Bryan-Dev"
  nic_name                   = "IN-NIC-Bryan-Dev"
  security_group_name        = "IN-SG-Bryan-Dev"
  ssh_key_path               = "./Users/bryanmontoya/Desktop/InfrastructureMonoAPI-main/env/dev/keys"
  PORT                       = "3001"
  location_resource          = "eastus2"
  MAPBOX_ACCESS_TOKEN        = var.MAPBOX_ACCESS_TOKEN
  MONGO_URL                  = var.MONGO_URL
  subnet_name                = "IN-SUBNET-Bryan-Dev"
  MONGO_INITDB_ROOT_PASSWORD = var.MONGO_INITDB_ROOT_PASSWORD
  MONGO_INITDB_ROOT_USERNAME = var.MONGO_INITDB_ROOT_USERNAME
  ip_name                    = "IN-IP-Bryan-Dev"
  vnet_name                  = "IN-VNET-Bryan-Dev"
  lvm_name                   = "IN-Server-Bryan-Dev"
}

resource "azurerm_resource_group" "IN_RG" {
  name = "ashli-rg"
  location = "eastus2"
}