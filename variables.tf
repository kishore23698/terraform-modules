
variable "region" {
    description = ""
    type = string
}
variable "cluster_name" {
    description = ""
    type = string
    nullable = false  
}
variable "kubernetes_version" {
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
variable "rolename" {
    description = ""
    type = string
}


variable "node_group_name" {
    description = ""
    type = string
}

variable "instance_types" {
    description = ""
    type = list(string)
}
variable "ami_type" {
    description = ""
    type = string
}
variable "capacity_type" {
    description = ""
    type = string
}
variable "disk_size" {
    description = ""
    type = number
}



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

variable "sg" {
    description = ""
    type        = string
}

variable "node_role_name" {
    description = ""
    type = string
}
variable "cidr_block_igw" {
    description = ""
    type = string 
}
