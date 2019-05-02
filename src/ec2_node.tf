module "node" {
  source = "./cluster"
  servers = "${var.prod ? 3 : 1}"
  type = "node"
}

output "node_ids" {
  value = ["${module.node.ids}"]
}
