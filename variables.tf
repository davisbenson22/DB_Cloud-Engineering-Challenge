#Instance Variables 
variable "instance_key_name"{
    description = " To ssh into instance" 
    type = string 
    default = " "      # "input your keypair name for us-west-1 in the quotation e.g default = "mykeypair" "
}


variable "instance_type"{
    description = " The instance type"
    type = string 
    default = "t2.medium"
}

variable "instance_count"{
    description = " The instance number" 
    type = number 
    default = 2
}

# VPC variables

variable "vpc_name"{
    description = "for vpc id" 
    type = string 
    default = "my_vpc"
}


variable "vpc_cidr_block"{
    description = " for vpc cidr block" 
    type = string 
    default = "10.0.0.0/16"
}

 variable "vpc_availability_zones"{
    description = "to achieve high availability" 
    type = list(string)
    default = ["us-west-1a", "us-west-1c"]
 }

variable "vpc_public_subnets"{
    description = " web servers run in public subnet" 
    type = list(string) 
    default = ["10.0.101.0/24", "10.0.102.0/24"] 
} 

variable "vpc_private_subnets"{
    description = " app servers, and datatbase"
    type = list(string) 
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets"{
    description = " database runs in the private subnet" 
    type = list(string) 
    default = ["10.0.151.0/24", "10.0.152.0/24"]
}

 variable "vpc_create_database_subnet_group"{
    description = " for datatbase" 
    type = bool
    default = true
 }

variable "vpc_create_database_subnet_route_table"{
    description = " route internet for public subnet"
    type = bool 
    default = true 
} 

variable "vpc_enable_nat_gateway"{
    description = " to route internet"
    type = bool
    default = true
} 

variable "vpc_single_nat_gateway"{
    description = " to route internet"
    type = bool 
    default = true
}



