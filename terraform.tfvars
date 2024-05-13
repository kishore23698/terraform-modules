rolename = "eks-cluster-demo-role1"
region = "ap-south-1"
cluster_name = "my-eks-cluster1"
kubernetes_version = 1.25
 
 
node_role_name = "eks_node_role1"
node_group_name = "my-node-group1"
instance_types = ["t2.medium"]
ami_type = "AL2_x86_64"
capacity_type = "ON_DEMAND"
disk_size = 20

cidr_block_igw = "0.0.0.0/0"
cidr_block = "10.0.0.0/16"
sub-a_cidr_block = "10.0.1.0/24"
subnet_az1 = "ap-south-1a"  
sub-b_cidr_block = "10.0.2.0/24"
subnet_az2 = "ap-south-1b" 
sub-c_cidr_block = "10.0.3.0/24"
subnet_az3 = "ap-south-1c" 


sg = "sg1"
