
variable "cidr_block"{
    description = ""
    type = string
}
variable "sub-a_cidr_block"{
    description = ""
    type = string
}
variable "subnet_az1" {
    description = ""
    type = string
}
variable "sub-b_cidr_block"{
    description = ""
    type = string
}
variable "subnet_az2" {
    description = ""
    type = string
}
variable "sub-c_cidr_block"{
    description = ""
    type = string
}
variable "subnet_az3" {
    description = ""
    type = string 
}

variable "cidr_block_igw" {
    description = ""
    type = string 
}
variable "tags" {
    description = ""
    type = map(string)
    default = {
        env = "dev"
    } 
}
