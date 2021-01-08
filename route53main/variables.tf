variable "aws_region" {
  default = "us-east-1"
}

variable "zone_name" {
  description = "Name of DNS zone"
  type = string
  default = "ticketpremium.com.br"
}


variable "zone_id" {
  type = string
}

variable "record_alias_name" {
  description = "ID(LoadBalancer) of DNS zone"
  type = string
  default = "me-gestao-dev-alb-1549986573.us-east-1.elb.amazonaws.com"
}