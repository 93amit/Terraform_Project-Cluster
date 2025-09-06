Description about Terraform Project-->
Project Related to Automate create EKS cluster with vpc,
files added to automate infrastructure for EKS Cluster,

Required files are 
> Terraform.tf : written code to configure aws provider with terraform
> Provider.tf : code to configure aws provider with specific block and region
> Local Variable : code for local variables
> Vpc.tf : code for create template module vpc
> Eks.tf : code for import Eks module teamplate, cluster configuration for control plan and worker node with vpc .
