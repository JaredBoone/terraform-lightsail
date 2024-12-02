variable "region" {
    default = "eu-central-1"
}

variable "availability_zone" {
    default = "eu-central-1a"
}

variable "instance_name" {
    default = "jammy-01"
}

variable "blueprint_id" {
    default = "ubuntu_22_04"
}

variable "bundle_id" {
    default = "micro_ipv6_3_0"
}

variable "key_pair_name" {
    default = "default"
}

variable "ip_address_type" {
    default = "ipv6"
}