
variable "region" {
    description = ""
    type = string
}
variable "cluster_name" {
    description = ""
    type = string
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

variable "subnet_ids"{
    description = ""
    type = list(string)
}

variable "security_group_ids" {
    description = ""
    type = list(string)
}
