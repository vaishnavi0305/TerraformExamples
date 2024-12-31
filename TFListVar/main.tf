variable "a" {
	type = list(string)
	default = ["vaish", "shubh", "wairagade"]
}

output "displaycontent" {
	value = var.a
}

output "displaysecContent" {
	value = element(var.a,2)
}

output "length" {
	value = length(var.a)
}
