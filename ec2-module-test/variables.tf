variable "project_name" {
    default = "roboshop"
}

variable "env" {
    default = "dev"
}


variable "instance_type" {
    default = "t3.small"
}

variable "sg_ids" {
    default = ["sg-0f1ebec62fce41ad5"]
}

variable "component" {
    default = "catalogue"
}