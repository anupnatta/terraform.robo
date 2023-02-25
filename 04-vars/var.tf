variable "my_name" {
  default = "anup"
}

output "my_name" {
  value = var.my_name
}

variable "my_full_name" {}

output "my_full_name" {
  value = var.my_full_name
}