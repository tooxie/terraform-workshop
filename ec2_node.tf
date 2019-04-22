module "node" {
  source = "./cluster"
  servers = 3
  type = "node"
}

output "node_ids" {
  value = ["${module.node.ids}"]
}
