variable "Map" {
	type = map(number)
	default = {
		"vaish" = 6
		"shubh" = 9
	}
}

output "mapOP" {
	value = var.Map
}

output "mapValue" {
	value = var.Map["vaish"]
}
