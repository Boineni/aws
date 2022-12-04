resource "aws_eip" "elastic" {
  vpc = true

  tags = {
    Name = "raju-eip"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.elastic.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "raju-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}