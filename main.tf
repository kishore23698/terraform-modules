module "vpc" {
    source             = "./modules/vpc"
    cidr_block         = var.cidr_block
    cidr_block_igw     = var.cidr_block_igw 
    sub-a_cidr_block   = var.sub-a_cidr_block
    subnet_az1         = var.subnet_az1 
    sub-b_cidr_block   = var.sub-b_cidr_block
    subnet_az2         = var.subnet_az2
    sub-c_cidr_block   = var.sub-c_cidr_block
    subnet_az3         = var.subnet_az3
    tags               = var.tags
}

module "security_group" {
    source             = "./modules/security_group"
    sg                 = var.sg
    tags               = var.tags
    vpc_id             = module.vpc.vpc_id
}


module "eks_cluster" {
    source             = "./modules/eks_cluster"
    depends_on         = [module.vpc, module.security_group]
    region             = var.region
    subnet_ids         = [module.vpc.subnet_id_a, module.vpc.subnet_id_b, module.vpc.subnet_id_c]
    security_group_ids = [module.security_group.security_group_id]
    cluster_name       = var.cluster_name
    rolename           = var.rolename
    kubernetes_version = var.kubernetes_version
    tags               = var.tags
}

module "eks_node_group" {
    source           = "./modules/eks_node_group"
    depends_on       = [module.eks_cluster]
    region           = var.region
    cluster_name     = var.cluster_name
    node_role_name   = var.node_role_name 
    node_group_name  = var.node_group_name
    subnet_ids       = [module.vpc.subnet_id_a, module.vpc.subnet_id_b, module.vpc.subnet_id_c]
    instance_types   = var.instance_types
    ami_type         = var.ami_type
    capacity_type    = try(upper(var.capacity_type), var.capacity_type)
    disk_size        = var.disk_size
    tags             = var.tags

}
