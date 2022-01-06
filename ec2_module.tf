 module "ec2_private" {
   depends_on = [module.vpc]
   source  = "terraform-aws-modules/ec2-instance/aws"
   version = "~> 2.17.0"

   name = "WebServer"

   ami                    = data.aws_ami.amzlinux2.id  #ami-04505e74c0741db8d
   instance_type          = var.instance_type
   key_name               = var.instance_key_name
   #monitoring             = true
   vpc_security_group_ids = [module.private_sg.security_group_id]
   subnet_ids              = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
   instance_count         = var.instance_count
  
   user_data =  file("${path.module}/apache-install.sh") 


   tags = {
     Terraform   = "true"
     Environment = "dev"
   }
 }