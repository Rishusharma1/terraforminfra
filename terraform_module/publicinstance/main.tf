# resource "aws_instance" "web_instance" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
  

#   subnet_id                   = var.sub_id
#   vpc_security_group_ids      = [var.security_id]
#   associate_public_ip_address = true


#   tags = {
#     "Name" : "elasticsearch"
#   }
# }


# data "aws_ami" "ubuntu" {
#   most_recent      = true
#   owners           = ["099720109477"]
# # image name
#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }
# # root device type
#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }
# # virtualization-type
#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
 
# }

# output "ami_id" {
#   value = data.aws_ami.ubuntu.id
# }

# #---------------------------------
# # resource "aws_instance" "web_instance" {
# #   ami           = data.aws_ami.ubuntu.id
# #   instance_type = "t2.micro"
  

# #   subnet_id                   = var.privatesub_id
# #   vpc_security_group_ids      = [var.security_id]
# #   associate_public_ip_address = true


# #   tags = {
# #     "Name" : "elasticsearch"
# #   }
# # }


# # data "aws_ami" "ubuntu" {
# #   most_recent      = true
# #   owners           = ["099720109477"]
# # # image name
# #   filter {
# #     name   = "name"
# #     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
# #   }
# # # root device type
# #   filter {
# #     name   = "root-device-type"
# #     values = ["ebs"]
# #   }
# # # virtualization-type
# #   filter {
# #     name   = "virtualization-type"
# #     values = ["hvm"]
# #   }
 
# # }

# # output "ami_id" {
# #   value = data.aws_ami.ubuntu.id
# # }




















# #------------------------------
# # resource "aws_instance" "server" {
# #   #instance_type = var.instance_type[count.index]
# #   instance_type               = lookup(var.static, "itype")
# #   subnet_id                   = aws_subnet.subnet_one[0].id
# #   ami                         = lookup(var.static, "ami")
# #   associate_public_ip_address = lookup(var.static, "publicip")
# #   key_name                    = lookup(var.static, "keyname")
# #   vpc_security_group_ids      = [aws_security_group.allow_tls.id]

# #   tags = {
# #     Name = var.inst_name[0]
# #   }
# # }
# # resource "aws_instance" "server1" {
# #   #instance_type = var.instance_type[count.index]
# #   instance_type               = lookup(var.static, "itype")
# #   subnet_id                   = aws_subnet.pvt_subnet[0].id
# #   ami                         = lookup(var.static, "ami")
# #   associate_public_ip_address = lookup(var.static, "publicip")
# #   key_name                    = lookup(var.static, "keyname")
# #   vpc_security_group_ids      = [aws_security_group.allow_tls.id]

# #   tags = {
# #     Name = var.inst_name[1]
# #   }
# # }










resource "aws_instance" "server" {
  # instance_type = var.instance_type[count.index]
  instance_type               = lookup(var.static, "itype")
  subnet_id                   = var.sub_id
  ami                         = lookup(var.static, "ami")
  associate_public_ip_address = lookup(var.static, "publicip")
  key_name                    = lookup(var.static, "keyname")
  vpc_security_group_ids      = [var.security_id]

  tags = {
    Name = var.public_name
  }
}