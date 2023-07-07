
variable "private_name" {
  type    = list(string)
  default = ["elasticsearch","elasticsearch"]
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
variable "privatesub_id" {
  type = list(string)
  
}



variable "security_id" {
  type    = string
  default = ""
}
