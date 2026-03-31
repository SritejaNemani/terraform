# variable "instances" {
#     type = map
#     default = {
#         mongodb = "t3.micro"
#         mysql = "t3.small"
#         user = "t3.micro"
#         shipping = "t3.small"
#     }
# }

# We take list and conert to set/map
variable "instances" {
    type = list 
    default = ["mongodb", "redis"]
}  


variable "zone_id" {
    default = "Z0104567LB0WMHMT0CWH"
}

variable "domain_name" {
    default = "nemani.online"
}