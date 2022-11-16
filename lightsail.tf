resource "aws_lightsail_domain" "my_domain" {
  domain_name = var.domain_name
}

resource "aws_lightsail_static_ip" "my_static_ip" {
  name = "${var.instance_name}-static-ip"
}

resource "aws_lightsail_instance" "my_instance" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair_name
  user_data         = data.template_file.init_script.rendered
}

resource "aws_lightsail_static_ip_attachment" "my_static_ip_attachment" {
  static_ip_name = aws_lightsail_static_ip.my_static_ip.name
  instance_name  = aws_lightsail_instance.my_instance.name
}