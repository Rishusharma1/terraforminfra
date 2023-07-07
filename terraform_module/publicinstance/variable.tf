
variable "public_name" {
  type    = string
  default = "elasticsearchpub"
}

variable "static" {
  type = map(any)
  default = {
    ami      = "ami-053b0d53c279acc90"
    publicip = true
    keyname  = "ubuntukey"
    itype    = "t2.large"
  }
}


variable "sub_id" {
  type = string
 
}

variable "security_id" {
  type    = string
  default = ""
}


#---------------------------------------------------
