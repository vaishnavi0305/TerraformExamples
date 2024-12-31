variable "my_set" {
	type = set(number)
	default = [1,2,4,5,5]
}

variable "my_list" {
	type = list(string)
	default = ["vaish", "shubh", "shubh"]
}

output "set" {
	value = var.my_set
}

output "list" {
	value = var.my_list
}

output "listasSet" {
	value = toset(var.my_list)
}
