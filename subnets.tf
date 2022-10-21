resource "aws_subnet" "laci_tf_public_subnet" {
  vpc_id = aws_vpc.laci_terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    "Name" = "laci_tf_public_subnet_1"
  }
}

resource "aws_subnet" "laci_tf_private_subnet" {
  vpc_id = aws_vpc.laci_terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    "Name" = "laci_tf_private_subnet_1"
  }
}