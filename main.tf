module "vk-2core" {
    source = "./modules/vk"
    name = "vk-2core"
    vm_count = 2
    #flavor_name = "Standard-2-2"
    #storage_size = 10
    #image_id = "d853edd0-27b3-4385-a380-248ac8e40956"
    #key_pair = "vv_kotov_CPUC_-rsa"
}
module "vk-4core" {
    source = "./modules/vk"
    name = "vk-4core"
    flavor_name = "Standard-4-4"
}