# AWS Route 53 Variables
variable "route53_mydomain" {
  description = "Domain Name"
  type = string 
  default = "domain.com"
}

variable "route53_apps_dns_name" {
  description = "APPS DNS Name"
  type = string 
  default = "apps.domain.com"
}