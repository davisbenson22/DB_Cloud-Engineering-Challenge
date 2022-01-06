module "public_sg" {
  source = "terraform-aws-modules/security-group/aws"
   version = "4.7.0"

  name        = "pub-sg"
  description = "Security group for the public subnet"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks      = ["0.0.0.0/0"]
  ingress_rules            = ["all-all"]
  egress_rules = ["all-all"]
}