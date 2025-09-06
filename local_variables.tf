# Local Variables

locals {
    region = "ap-south-1"
    name = "Eks_Cluster"
    vpc_cidr = "10.0.0.0/16"
    azs                  = ["ap-south-1a", "ap-south-1b"]
    public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
    intra_subnet_cidrs  = ["10.0.5.0/24", "10.0.6.0/24"]
    env = "dev"
}