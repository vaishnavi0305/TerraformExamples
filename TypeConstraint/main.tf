variable "type1" {
	type = string
	default = "Shubh"
}

variable "type2" {
	type = bool
	default = "true"
}

variable "type3" {
	type = number
	default = 123
}

output "a" {
	value = var.type1
}

output "b" {
	value = var.type2
}

output "c" {
	value = var.type3
}
