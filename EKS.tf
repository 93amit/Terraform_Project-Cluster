
module "eks" {

# import the EKS module template
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 20.30"
   
   # cluster configuration (control plane)
    cluster_name    = local.name
    cluster_endpoint_public_access  = true


    vpc_id          = module.vpc.vpc_id
    subnet_ids         = module.vpc.private_subnets

        cluster_addons = {
            vpc-cni = {
                most_recent_version = true
            }
            kube-proxy ={
                most_recent_version = true
            } 
            coredns = {
                most_recent_version = true
            }
        }

    # control plane network
    control_plane_subnet_ids = module.vpc.intra_subnets

# worker node configuration(managed node group in the cluster)
    eks_managed_node_group_defaults =  {

        instance_types = ["t2.medium"]
        attach_cluster_primary_security_group = true
    }

     eks_managed_node_groups = {

        my-eks-nodes = {
        instance_types = ["t2.medium"]
        desired_size = 2
        min_size     = 2
        max_size     = 3

        capacity_type = "SPOT"
        }
    }

    tags = {
    Environment = local.env
    Terraform   = "true"
  }
}

