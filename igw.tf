resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.raju.id

  tags = {
    Name = "raju-IGW"
  }
}