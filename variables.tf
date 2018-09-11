variable vpc-user {}
variable vpc-password {}
variable vpc-vra_server {}
variable vpc-tenant {}
variable vpc-sub_tenant_ref {}
variable vpc-vm_prefix {}
variable vpc-location {
  default = "Apeldoorn"
}
variable vpc-catalog_ipsec_vpn_name {
  default = "Create IPsec VPN"
}
variable vpc-catalog_internal_lb_name {
  default = "Internal LB (sNAT)"
}
variable vpc-catalog_network_name {
  default = "Create Network"
}
variable vpc-catalog_service_name {
  default = "Create Service"
}
variable vpc-catalog_ip_network_name {
    default = "Create IP Network"
}
variable vpc-catalog_security_group_name {
  default = "Create Security Group"
}
variable vpc-catalog_security_policy_name {
  default = "Create Security Policy"
}
variable vpc-catalog_coreos_name {
   default = "CoreOS 1409.5.0"
}
variable vpc-catalog_centos_name {
   default = "CentOS 7.1"
}
variable vpc-catalog_redhat_name {
   default = "Redhat 7.3"
}
variable vpc-catalog_ubuntu_name {
   default = "Ubuntu Server 16.04 LTS"
}
variable vpc-catalog_windows_name {
   default = "Microsoft Windows Server 2016 SE"
}
variable vpc-catalog_mssql_name {
   default = "Microsoft Windows Server 2012 R2 with SQL Server 2012"
}

variable admin-password {}
variable coreos-version {
    default = "1409.5.0"
}

