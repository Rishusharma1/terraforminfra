variable "vpc_cidr1" {
  type = string

  default = "10.0.0.0/16"
}


variable "cidr_subnet1" {
  type = string

  default = "10.0.1.0/24"
}

variable "subnet_zone1" {
  type = string

  default = "us-east-1a"
}
variable "private_subnet_cidr1" {
  type = string

  default = "10.0.5.0/24"
}
variable "private-az_zone1" {
  type    = string
  default = "us-east-1a"
}

# variable "private-subnet-name1" {
#   type    = string
#   default = "ninja-private-sub-01"
# }

variable "ports1" {
  type    = list(number)
  default = [22, 80, 443, 5601 , 9200]
}

variable "name1" {
  type    = string
  default = "elastic-sg"
}




variable "static1" {
  type = map(any)
  default = {
    ami      = "ami-053b0d53c279acc90"
    publicip = true
    keyname  = "ubuntukey"
    itype    = "t2.large"
  }
}
variable "static2" {
  type = map(any)
  default = {
    ami      = "ami-053b0d53c279acc90"
    publicip = false
    keyname  = "ubuntukey"
    itype    = "t2.large"
  }
}



variable "public_name1" {
  type    = string
  default = "elasticsearchpub"
}
variable "private_name1" {
  type    = list(string)
  default = ["elasticsearch","elasticsearch"]
}
