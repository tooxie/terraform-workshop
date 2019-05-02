module "elastic" {
  source = "./cluster"
  type = "elastic"
  servers = 1
}

output "elastic_ids" {
  value = ["${module.elastic.ids}"]
}
