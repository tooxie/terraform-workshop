module "node" {
  source = "./cluster"
  servers = 3
  type = "node"
}
