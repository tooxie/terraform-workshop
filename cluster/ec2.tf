resource "aws_instance" "web" {
  ami = "ami-0669a96e355eac82f"  # imageReference in Azure
  instance_type = "${var.type}"
  count = "${var.servers}"
}