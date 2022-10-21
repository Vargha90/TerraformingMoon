resource "aws_route_table" "laci_tf_public_rt" {
  vpc_id = aws_vpc.laci_terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.laci_tf_igw.id
  }

  tags = {
    "Name" = "laci_tf_public_rt_1"
  }
}

resource "aws_route_table_association" "laci_public_rt_1_association" {
  subnet_id = aws_subnet.laci_tf_public_subnet.id
  route_table_id = aws_route_table.laci_tf_public_rt.id
}