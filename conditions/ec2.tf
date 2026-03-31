resource "aws_instance" "example" {
  ami           = var.ami_id
  # if in dev we can use t3.micro - otherwise go with t3.small
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]    # we get the id from Attribite reference (output of aws_security_group resource )

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {       #here allow_tls is for terraform name reference
  name        = var.sg_name             #here name is for AWS account

  description = var.sg_description

   egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_from_port
    protocol         = "-1"
    cidr_blocks      =  var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_from_port
    protocol         = "-1"
    cidr_blocks      =  var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}