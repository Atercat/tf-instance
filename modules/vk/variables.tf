variable "flavor_name" {
    type = string
    default = "Standard-2-2"
    description = "openstack flavor list"
}
variable "storage_size" {
    type = number
    default = 10
}
variable "image_id" {
    type = string
    default = "d853edd0-27b3-4385-a380-248ac8e40956" #Ubuntu-18.04-201910
    description = "openstack image list"
}
#variable "cnt" {
#    type = number
#    default = 1
#}
variable "key_pair" {
    type = string
    default = "vv_kotov_CPUC_-rsa"
}