variable "servers" {}
variable "type" {}
variable "sizes" {
  type = "map"
  default = {
    "node" = "t2.micro"
    "elastic" = "m5.large"
  }
}
