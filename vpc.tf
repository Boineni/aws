resource "aws_vpc" "raju" {
  cidr_block = "20.0.0.0/16"

  tags = {
    Name = "${var.vpc}"
  }
}
