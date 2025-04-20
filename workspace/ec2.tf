resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "HelloWorldTerraform"
  }
}

resource "aws_security_group" "roboshop_all" {
  name        = "roboshop_all_aws"
  description = "Allow TLS inbound traffic and all outbound traffic"
      ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
 }
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }



  tags = {
    Name = "roboshop_all_aws"
  }
}
