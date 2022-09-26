variable "ami" {
  type = map
  default = {
    us-east-1 = "ami-018d291ca9ffc002f"
  }
}
variable "region" {
  type    = string
  default = "us-west-1"
}