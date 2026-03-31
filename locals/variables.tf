
variable "name" {
    type = string
    default =  "locals"
}

variable "environment" {
    type =  string
    default = "dev"
}

/* variable "instance_name" {
    type =  string
    default = "${var.name}-${var.environment}" #locals-dev
}
 */

 # we cannot give variables inside variable so we create locals

 


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