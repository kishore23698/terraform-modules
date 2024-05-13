
variable "region" {
    description = ""
    type = string
}
variable "cluster_name" {
    description = ""
    type = string
}
variable "node_group_name" {
    description = ""
    type = string
}

variable "node_role_name" {
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
    type = string
}
variable "tags" {
    description = ""
    type = map(string)
    default = {
        env = "dev"
    }
}

variable "subnet_ids"{
    description = ""
    type = list(string)
}