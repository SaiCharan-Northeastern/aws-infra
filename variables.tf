# variable "region_variable" {
#   default = "us-east-1"
# }



# variable "region" {
#   description = "AWS Deployment Region"
#   default     = "us-east-1"
# }

variable "ami_image" {
  default = "ami-09d56f8956ab235b3"
  type    = string
}

variable "profile" {
  default = "dev"
  type    = string
}

variable "region_variable" {
  default = "us-east-1"
  type    = string
}


variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "public_subnet_1" {
  default = "10.0.1.0/24"
  type    = string
}

variable "private_subnet_1" {
  default = "10.0.2.0/24"
  type    = string
}

variable "public_subnet_2" {
  default = "10.0.3.0/24"
  type    = string
}

variable "private_subnet_2" {
  default = "10.0.4.0/24"
  type    = string
}

variable "public_subnet_3" {
  default = "10.0.5.0/24"
  type    = string
}

variable "private_subnet_3" {
  default = "10.0.6.0/24"
  type    = string
}

variable "route_table_internet_gateway_cidr"{
  default = "0.0.0.0/0"
  type = string
}


# variable "availability_zones" {
#   type = list(string)
#   # default     = ["us-east-1a", "us-east-1b"]
#   description = "Describing the values for availability zones"
# }