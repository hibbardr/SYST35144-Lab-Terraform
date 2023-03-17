# This is the root main of the project

module "VPC" {
  source = "./VPC"
}
module "SECURITY-GROUP" {
  source = "./SECURITY-GROUP"
  vpc-id = module.VPC.vpc-id
}
module "EC2" {
  source               = "./EC2"
  aws_subnet-public-SN = module.VPC.aws_subnet-public-SN
  aws_subnet-private-SN = module.VPC.aws_subnet-private-SN
  SG-TF                = module.SECURITY-GROUP.SG-TF
}
