variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Nme = "functions-demo"
    }
}

variable "sg_tags" {
    default = {
        Nme = "functions-demo"
    }
}

variable "instances" {
    type = list 
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
} 


variable "zone_id" {
    default = "Z0104567LB0WMHMT0CWH"
}

variable "domain_name" {
    default = "nemani.online"
}