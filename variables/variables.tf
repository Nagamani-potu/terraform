variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        project = "Roboshop"
        environment = "DEV"
        component = "web"
        Terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default = "roboshop-all"
}

variable "sg_description" {
    type = string
    default = "allowing all ports"
}

variable "inbound-from-port" {
    default = 0
    type = number
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}