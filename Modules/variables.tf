variable "az" {

  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "pub_sub" {
    type = list(string)
      
}

variable "vpc_name" {
    type = string
}
