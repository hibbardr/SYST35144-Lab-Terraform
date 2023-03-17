variable "aws_subnet-public-SN" {}
variable "aws_subnet-private-SN" {}
variable "SG-TF" {}

variable "chassis" {
    type = string
    default = "t2.micro"
}
