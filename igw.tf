resource "aws_internet_gateway" "laci_tf_igw" {
  vpc_id = aws_vpc.laci_terraform_vpc.id

  tags = {
    "Name" = "laci_tf_igw_1"
  }
}