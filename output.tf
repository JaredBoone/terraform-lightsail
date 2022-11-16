output "static_public_ip" {
  value = "${aws_lightsail_static_ip.my_static_ip.ip_address}"
}