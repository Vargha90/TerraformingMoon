resource "aws_instance" "laci_tf_instance" {
  ami = "ami-0e2031728ef69a466"
  instance_type = "t2.micro"
  key_name = "LaciKeyTF"

  subnet_id = aws_subnet.laci_tf_public_subnet.id
  vpc_security_group_ids = [ aws_security_group.laci_tf_sg.id ]

  associate_public_ip_address = true

  tags = {
    "Name" = "laci-tf-ec2"
  }
}