/*
 * Variables to be set by module config
 */
variable vpc-user {}
variable vpc-password {}
variable vpc-vra_server {}
variable vpc-tenant {}
variable vpc-sub_tenant_ref {}
variable vpc-catalog_network_name {}
variable vpc-catalog_ip_network_name {}
variable vpc-catalog_service_name {}
variable vpc-catalog_internal_lb_name {}
variable vpc-catalog_ipsec_vpn_name {}
variable vpc-catalog_security_group_name {}
variable vpc-catalog_security_policy_name {}
variable vpc-catalog_coreos_name {}
variable vpc-catalog_centos_name {}
variable vpc-catalog_redhat_name {}
variable vpc-catalog_ubuntu_name {}
variable vpc-catalog_windows_name {}
variable vpc-catalog_mssql_name {}
variable vpc-vm_prefix {}

variable admin-password {}

/*
 * Module base naming
 */
variable "basename" {
  default = "example"
}


/*
 * VPC config
 */
#valid locations are: Aalsmeer, Apeldoorn
variable vpc-location {}
# VPC network cidr masks valid values are within: 17-30
variable backend-network-cidrmask {
    default = 24
}
variable "backend-network-name" {
  default = "backend-nw"
}


variable vpc-coreos-osprefix {
  default = "CROS8"
}
variable vpc-coreos-template {
  default = "TPL_CoreOS-1409.5.0"
}
variable vpc-coreos-ostype {
  default = "Linux"
}
variable vpc-centos-osprefix {
  default = "CTOS7"
}
variable vpc-centos-template {
  default = "TPL_CentOS71"
}
variable vpc-centos-ostype {
  default = "Linux"
}
variable vpc-redhat-osprefix {
  default = "RHEL7"
}
variable vpc-redhat-template {
  default = "TPL_RHEL72Cert"
}
variable vpc-redhat-ostype {
  default = "Linux"
}
variable vpc-ubuntu-osprefix {
  default = "UB16S"
}
variable vpc-ubuntu-template {
  default = "TPL_Ubuntu_16.04LTS_Server"
}
variable vpc-ubuntu-ostype {
  default = "Linux"
}
variable vpc-windows-osprefix {
  default = "W12R2"
}
variable vpc-windows-template {
  default = "TPL_W2012R2"
}
variable vpc-windows-ostype {
  default = "Windows"
}
variable vpc-mssql-osprefix {
  default = "W12R2"
}
variable vpc-mssql-template {
  default = "TPL_W2012R2SQL"
}
variable vpc-mssql-ostype {
  default = "Windows"
}
variable vpc-assigned-storage-tier {
  default = "Generic Storage"
}
variable vpc-docker-datadisk-size {
  default = "50 GB"
}

/*
 * Networking config
 */
variable backend-network {
  default = ""
}

/*
 * Example config
 */

variable example-count {
  default = "3"
}

variable example-vm-size {
   default = "Custom"
}
variable example-datadisk-size {
   default = "50 GB"
}
