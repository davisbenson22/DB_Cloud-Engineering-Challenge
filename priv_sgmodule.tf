module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "4.7.0"

  name        = "private_sg"
  description = "Security group for HTTP and SSH open to VPC block"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks      = [module.vpc.vpc_cidr_block]
  ingress_rules            = [ "ssh-tcp", "http-80-tcp"]
  egress_rules = ["all-all"]
}