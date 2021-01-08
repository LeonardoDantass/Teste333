provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "me-gestao-hmg-terraform-states"
    key    = "route53/terraform.tfstate"
    region = "us-east-1"
  }
}

module "records" {
  source  = "/home/leonardo/ME-Gestao/Terraform/terraform-modules/aws/route53"
 
  zone_name = var.zone_name
  records = [
    {
      name    = "dev"
      type    = "A"
      alias   = {
        name    = var.record_alias_name
        zone_id = var.zone_id
      }
    },
  ]
}