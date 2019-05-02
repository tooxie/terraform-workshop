resource "aws_codecommit_repository" "workshop" {
  repository_name = "TerraformWorkshop"
}

output "clone_url" {
  value = [
    "${aws_codecommit_repository.workshop.clone_url_http}",
    "${aws_codecommit_repository.workshop.clone_url_ssh}",
  ]
}
