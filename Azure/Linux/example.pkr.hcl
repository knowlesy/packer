
source "azure-arm" "autogenerated_1" {
  azure_tags = {
    dept = "test"
  }
  communicator                      = "ssh"
  image_offer                       = "debian-11"
  image_publisher                   = "Debian"
  image_sku                         = "11"
  location                          = "uksouth"
  managed_image_name                = "Debian_11_Build"
  managed_image_resource_group_name = "rg-packer"
  os_type                           = "Linux"
  subscription_id                   = "1111-2222-3333-4444"
  use_azure_cli_auth                = "true"
  vm_size                           = "Standard_D2_v2"
  ssh_timeout                        = "4h"
  ssh_username                    = "packer"
 
}

build {
  sources = ["source.azure-arm.autogenerated_1"]

 provisioner "shell" {

    inline            = ["sleep 30","sudo apt-get update && sudo apt-get upgrade -y"]


  }

}
