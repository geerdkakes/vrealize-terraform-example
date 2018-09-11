# Configure the VRA provider for use with VPC
provider "vrealize" {
    tenant                        = "${var.vpc-tenant}"
    user                          = "${var.vpc-user}"
    password                      = "${var.vpc-password}"
    vra_server                    = "${var.vpc-vra_server}"
    sub_tenant_ref                = "${var.vpc-sub_tenant_ref}"
    catalog_network_name          = "${var.vpc-catalog_network_name}"
    catalog_ip_network_name       = "${var.vpc-catalog_ip_network_name}"
    catalog_service_name          = "${var.vpc-catalog_service_name}"
    catalog_ipsec_vpn_name        = "${var.vpc-catalog_ipsec_vpn_name}"
    catalog_security_group_name   = "${var.vpc-catalog_security_group_name}"
    catalog_security_policy_name  = "${var.vpc-catalog_security_policy_name}"
    catalog_internal_lb_name      = "${var.vpc-catalog_internal_lb_name}"
    vm_prefix                     = "${var.vpc-vm_prefix}"
}
