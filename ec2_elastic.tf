module "elastic" {
  source = "./cluster"
  type = "elastic"
  servers = 1
}
