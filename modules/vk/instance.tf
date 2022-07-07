resource "vkcs_blockstorage_volume" "volume" {
  name              = "${var.name}-storage${var.suffix}"
  size              = var.storage_size
  image_id          = var.image_id
  volume_type       = "ssd"
  availability_zone = "MS1"
}
resource "vkcs_compute_instance" "vm" {
  name            = "${var.name}${var.suffix}"
  image_id        = var.image_id
  flavor_name     = var.flavor_name
  key_pair        = var.key_pair
  security_groups = ["default","all"]
  config_drive    = true
  count           = var.vm_count

  block_device {
    uuid                  = vkcs_blockstorage_volume.volume.id
    source_type           = "volume"
    destination_type      = "volume"
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    name = "ext-net"
  }
}