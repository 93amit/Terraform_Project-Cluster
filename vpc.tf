module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    #version = "6.0.1"

    name = "${local.name}-vpc"
    cidr = local.vpc_cidr

    azs             = local.azs
    public_subnets  = local.public_subnet_cidrs
    private_subnets = local.private_subnet_cidrs
    intra_subnets = local.intra_subnet_cidrs

    enable_nat_gateway = true
    single_nat_gateway = true

    tags = {
        Terraform   = "true"
        Environment = local.env
    }
}