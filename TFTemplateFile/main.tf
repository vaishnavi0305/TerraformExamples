locals {
	rendered = templatefile("./example.tpl", { name = "vaishnavi", number = 10 })
}

output "rendered_template" {
	value = local.rendered
}
