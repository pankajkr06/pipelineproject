variable "aws_region" {
    description = "Describes the AWS Region"
}

variable "cidr" {
    description = "Describes CIDR for VPC"
  
}

variable "az" {

  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "pub_sub" {
    type = list(string)
      
}

variable "vpc_name" {
    type = string
}