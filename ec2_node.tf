module "node" {
  source = "./cluster"
  servers = 3
  type = "t2.micro"
}
