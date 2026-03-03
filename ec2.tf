resource "aws_instance" "terraform" {
<<<<<<< HEAD
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "terraform"
    Terraform = "true"
  }
=======
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2_tags
>>>>>>> 3a9ba973f5ff2f3941a3bcf7d43168e935b5a52f
}


resource "aws_security_group" "allow_all" {
<<<<<<< HEAD
  name = "allow-all"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
=======
  name = var.sg_name

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
>>>>>>> 3a9ba973f5ff2f3941a3bcf7d43168e935b5a52f
  }


   egress {
<<<<<<< HEAD
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
=======
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
>>>>>>> 3a9ba973f5ff2f3941a3bcf7d43168e935b5a52f
  }

  tags = {
    name = " allow-all"
  }
}