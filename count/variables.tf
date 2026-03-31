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

variable "fruits" {
    type = list(string)
    default = ["apple", "orange", "apple", "banana"]
}

variable "fruit_set" {
    type = set(string)
    default = ["apple", "orange", "apple", "banana"]
}