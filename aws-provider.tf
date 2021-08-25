provider "aws" {
    #access_key = ""
    #secret_key = ""
  region = "us-east-2"
}

module "aws-network-configs" {
  source = "./network-configs"
}

resource "aws_ami_from_instance" "ami_from_instance" {
  name = 
  source_instance_id = 
}

resource "aws_ami_from_instance" "ami_from_instance1" {
  name = 
  source_instance_id = 
}

resource "aws_ami_from_instance" "ami_from_instance2" {
  name = 
  source_instance_id = 
}

resource "aws_default_vpc" "default_vpc" {}
