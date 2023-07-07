
variable "public_name" {
  type    = string
  default = "elasticsearchpub"
}
# variable "p_inst_name" {
#   type    = list(string)
#   default = ["Instance_pvt1","Instance_pvt2"]
# }
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
