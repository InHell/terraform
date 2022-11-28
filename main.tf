#start  This files must be in folder basic-ec2 (in my case, u can make own and rewrite config)
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}
/*
place cor yours merchandising
*/

resource "aws_instance" "linux_v1" {
    ami = "ami-005b11f8b84489615"
    count = 2
    instance_type = "t2.micro"

    tags = {
     Name = " X T2Small test object"
     Owner = "Dmitriy Sviridov"
     Project = "DevOps sandbox"
    }

}
