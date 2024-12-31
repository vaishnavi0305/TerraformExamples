variable "Object" {
	type = object({name = string, rollno = number})
	default = {
		name = "vaish"
		rollno = 3
	}
}

variable "personsAddr" {
	type = object({name = string, rollno = number, address = object({line1 = string, line2 = string, postcode = number})})
	default = {
		name = "shubh"
		rollno = 09
		address = {
				line1 = "morya apartment"
				line2 = "shinde nagar"
				postcode = "411057"
			}
	}
}

output "display" {
	value = var.Object
}

output "display2" {
	value = var.personsAddr
}
