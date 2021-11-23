# AWS Route 53

# Get DNS information from AWS Route53
data "aws_route53_zone" "mydomain" {
  name         = var.route53_mydomain
}

# Route 53 DNS Registration
resource "aws_route53_record" "apps_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id 
  name    = var.route53_apps_dns_name
  type    = "A"
  alias {
    name                   = module.alb.this_lb_dns_name
    zone_id                = module.alb.this_lb_zone_id
    evaluate_target_health = true
  }  
}