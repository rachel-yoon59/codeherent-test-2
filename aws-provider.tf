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

module "vpc12" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.6.0"
    # Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic.
  enable_classiclink = false
    # Assign IPv6 address on public subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  public_subnet_assign_ipv6_address_on_creation = false
    # The Availability Zone for the VPN Gateway
  vpn_gateway_az = ""
    # Assign IPv6 address on outpost subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  outpost_subnet_assign_ipv6_address_on_creation = false
    # The ARN of the Permissions Boundary for the VPC Flow Log IAM Role
  vpc_flow_log_permissions_boundary = ""
    # The fields to include in the flow log record, in the order in which they should appear.
  flow_log_log_format = ""
    # Name of database subnet group
  database_subnet_group_name = ""
    # Assign IPv6 address on intra subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  intra_subnet_assign_ipv6_address_on_creation = false
    # List of maps of egress rules to set on the default security group
  default_security_group_egress = [  ]
    # Assign IPv6 address on database subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  database_subnet_assign_ipv6_address_on_creation = false
    # List of maps of ingress rules to set on the default security group
  default_security_group_ingress = [  ]
    # ARN of Outpost you want to create a subnet in.
  outpost_arn = ""
    # Assign IPv6 address on elasticache subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  elasticache_subnet_assign_ipv6_address_on_creation = false
    # The ARN of the KMS Key to use when encrypting log data for VPC flow logs.
  flow_log_cloudwatch_log_group_kms_key_id = ""
    # Specifies the number of days you want to retain log events in the specified log group for VPC flow logs.
  flow_log_cloudwatch_log_group_retention_in_days = 1
    # Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.
  enable_classiclink_dns_support = false
    # Assign IPv6 address on private subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  private_subnet_assign_ipv6_address_on_creation = false
    # AZ where Outpost is anchored.
  outpost_az = ""
    # Assign IPv6 address on redshift subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  redshift_subnet_assign_ipv6_address_on_creation = false
}
