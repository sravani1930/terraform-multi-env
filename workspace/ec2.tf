resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id
  instance_type = lookup(var.instance_type, terraform.workspace)
  # vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "HelloWorldTerraform"
  }
}

# resource "aws_security_group" "roboshop_all" {
#   name        = "roboshop_all_aws"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#       ingress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
  
#  }
    
#     egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
    
#   }



#   tags = {
#     Name = "roboshop_all_aws"
#   }
# }
