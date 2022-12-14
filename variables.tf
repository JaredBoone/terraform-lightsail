variable "region" {
    default = "us-east-1"
}

variable "availability_zone" {
    default = "us-east-1a"
}

variable "instance_name" {
    default = "bullseye"
}

variable "blueprint_id" {
    default = "debian_11"
}

variable "bundle_id" {
    default = "small_2_0"
}

variable "key_pair_name" {
    default = "keypair.pem"
}

variable "domain_name" {
    default = "example.com"
}