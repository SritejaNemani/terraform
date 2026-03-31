
output "fruits_names" {
    value = var.fruits
}

output "fruit_set" {
    value = var.fruit_set
}

output "roboshop_instances" {
  value       = aws_instance.example
  description = "description"
}



