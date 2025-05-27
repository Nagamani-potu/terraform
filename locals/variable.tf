variable "instance_names" {
    type = list
    default = ["mongodb", "redis", "mysql", "catalogue", "shipping", "cart", "user", "rabbitmq", "payment", "web", "dispatch"]
}

variable "ami_id" {
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    default = "Z03488881IF05FW6LG2S9"
}

variable "domain_name" {
    default = "devopstraining.space"
}