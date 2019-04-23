variable "prod" {
  type = "string"
  default = false
}

variable "site" {
  type = "string"
  description = "URL to ping"
}

variable "expected" {
  type = "string"
  description = "String to search for"
}
