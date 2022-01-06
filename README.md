## The following resources were provisioned on AWS(us-west-1) for this project:

- VPC and subnets(private and public): Nat gateway, Routetable, Internet gateway
- Security groups
- Load balancer (and target groups)
- EC2 running the application

## Steps To Run and View the String(Hello Greylogs!) on Your Browser

1. Install and configure terraform.
2. My resources are provisioned in us-west-1 region.
3. On AWS console , get the name of your already existing key pair in us-west-1 region or you can create a new key pair  .
4. Open the variables.tf file in the folder containing the .tf files.
5. Navigate to variable "instance_key_name" block and set the default to the name of your key pair (e.g default = "mykeypair").
6. Save changes made in variables.tf file before you proceed.
7. Run the terraform workflow - a) terraform init b) terraform validate C) terraform plan d) terraform apply.
8. Allow 3 munites for resources to complete initialization.
9. On your terminal copy the output of elb dsn name e.g this_elb_dns_name = "My-Elb-1929531987.us-west-1.elb.amazonaws.com"
10. Enter the dns name to your browser e.g My-Elb-1929531987.us-west-1.elb.amazonaws.com
11. Notice the string (Hello Greylogs! ) appears on your browser. 
12. Run " terraform destroy " on your terminal to delete created resources.

## Other Specifications
 Terraform Version: v1.0.2
 Operating System: Linux



