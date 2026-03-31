resource "aws_instance" "example" {
    #for_each = toset(var.instances)
    for_each = toset(var.instances)
    ami           = "ami-0220d79f3f480ecf5"
    
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]    # we get the id from Attribite reference (output of aws_security_group resource )
    
    tags = {
        Name = each.key
        Project = "roboshop"
  }
}



resource "aws_security_group" "allow_tls" {       #here allow_tls is for terraform name reference
  name        = "allow-all-roboshop"             #here name is for AWS account

  description = "Allow TLS inbound traffic and all outbound traffic"
# here below ingress and egress are called BLOCKS they are neither a map/set as there is no =

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = ingress.value.port
      to_port          = ingress.value.port
      protocol         = "tcp"
      cidr_blocks      = ingress.value.cidr_blocks
      ipv6_cidr_blocks = ["::/0"]
      description = ingress.value.description
    }
  }

  tags = {
    Name = "allow-all-terraform"
  }
}