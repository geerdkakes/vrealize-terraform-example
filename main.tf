module "examplemodule" {
  source = "./example_module"

  vpc-tenant                        = "${var.vpc-tenant}"
  vpc-user                          = "${var.vpc-user}"
  vpc-password                      = "${var.vpc-password}"
  vpc-vra_server                    = "${var.vpc-vra_server}"
  vpc-catalog_network_name          = "${var.vpc-catalog_network_name}"
  vpc-catalog_service_name          = "${var.vpc-catalog_service_name}"
  vpc-catalog_ip_network_name       = "${var.vpc-catalog_ip_network_name}"
  vpc-catalog_ipsec_vpn_name        = "${var.vpc-catalog_ipsec_vpn_name}"
  vpc-catalog_security_group_name   = "${var.vpc-catalog_security_group_name}"
  vpc-catalog_security_policy_name  = "${var.vpc-catalog_security_policy_name}"
  vpc-catalog_internal_lb_name      = "${var.vpc-catalog_internal_lb_name}"
  vpc-catalog_coreos_name           = "${var.vpc-catalog_coreos_name}"
  vpc-catalog_centos_name           = "${var.vpc-catalog_centos_name}"
  vpc-catalog_redhat_name           = "${var.vpc-catalog_redhat_name}"
  vpc-catalog_ubuntu_name           = "${var.vpc-catalog_ubuntu_name}"
  vpc-catalog_windows_name          = "${var.vpc-catalog_windows_name}"
  vpc-catalog_mssql_name            = "${var.vpc-catalog_mssql_name}"
  vpc-vm_prefix                     = "${var.vpc-vm_prefix}"
  vpc-sub_tenant_ref                = "${var.vpc-sub_tenant_ref}"
  vpc-location                      = "${var.vpc-location}"

  admin-password     = "${var.admin-password}"
}

