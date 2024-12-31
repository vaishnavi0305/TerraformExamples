variable "my_tuple" {
	type = tuple([string, number, bool])
	default = ["hello", 7, false]
}

output "list_tuple" {
	value = var.my_tuple
}

output "tuple_length" {
	value = length(var.my_tuple)
}
