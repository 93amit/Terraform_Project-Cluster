# AWS provider configuration with region specification
provider "aws"{                           # aws provider block
  region =  local.region                 #"ap-south-1" (Mumbai region)
  
}