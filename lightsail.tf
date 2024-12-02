resource "aws_lightsail_instance" "my_instance" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair_name
  ip_address_type   = var.ip_address_type
#  user_data         = "${file("/install.sh")}"
  add_on {
    snapshot_time = "00:00"
    status        = "Enabled"
    type          = "AutoSnapshot"
  }
}
