variable "sg" {
    description = ""
    type = string
}
variable "vpc_id" {
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
