module "elastic" {
  source = "./cluster"
  type = "m5.large"
  servers = 1
}
