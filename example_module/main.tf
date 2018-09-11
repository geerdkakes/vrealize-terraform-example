resource "vrealize_network" "backend-network" {
  networkName          = "${var.basename}-${var.backend-network-name}"                           #Let op bij het aanpassen van deze variabele ook alle refs aanpassen
  createSecurityPolicy = true
  datacenter           = "${var.vpc-location}"
  size                 = "${var.backend-network-cidrmask}"
}

data "template_file" "postinstall-config" {
  template = "${file("${path.module}/postinstallscript.sh")}"
}

resource "vrealize_virtual_machine" "example_vm" {
  count      = "${var.example-count}"
  depends_on = ["vrealize_network.backend-network"]

  virtualMachineCatalogName = "${var.vpc-catalog_ubuntu_name}"

  lifecycle {
    ignore_changes = ["selectedTemplate"]
  }

  hostnameCompletionString = "${var.basename}${count.index}"
  assignedDatacenter       = "${var.vpc-location}"
  selectedTemplate         = "TPL_Ubuntu_16.04LTS_Server"
  osPrefix                 = "${var.vpc-ubuntu-osprefix}"
  osType                   = "${var.vpc-ubuntu-ostype}"

  selectedSize = "${var.example-vm-size}"
  assignedRAM  = 8
  assignedCPU  = 4

  assignedStorageTier       = "${var.vpc-assigned-storage-tier}"
  assignedDataDiskCount     = 0
  assignedNetwork0          = "Default Public Network ${var.vpc-location}"
  assignedNetwork1          = "${var.basename}-${var.backend-network-name}"
  runPostInstallationScript = true
  postInstallationScript    = "${data.template_file.postinstall-config.rendered}"

  mustBackup = false
}

resource "vrealize_security_group" "example-security-group" {
  depends_on          = ["vrealize_virtual_machine.example_vm"]
  name                = "${var.basename}-sg"
  datacenter          = "${var.vpc-location}"
  virtualMachineNames = ["${vrealize_virtual_machine.example_vm.*.hostnameCompletionString}"]
}

resource "vrealize_security_policy" "example-security-policy" {
  name           = "${var.basename}-sp"
  datacenter     = "${var.vpc-location}"
  description    = "Ubuntu Security Policy"
  securityGroups = ["${vrealize_security_group.example-security-group.name}"]
}

resource "vrealize_firewall_rule" "example-allow-ssh-inbound" {
  name               = "${var.basename}-allow-ssh-inbound"
  service            = "SSH"
  ruleAction         = "Allow"
  direction          = "Inbound"
  sources            = ["External"]
  security_policy_id = "${vrealize_security_policy.example-security-policy.id}"
}

resource "vrealize_firewall_rule" "ubuntu-allow-any-inbound" {
  name               = "${var.basename}-allow-any-inbound"
  service            = "<Any>"
  ruleAction         = "Allow"
  direction          = "Inbound"
  sources            = ["External"]
  security_policy_id = "${vrealize_security_policy.example-security-policy.id}"
}

output "example-count" {
  value = "${var.example-count}"
}

output "vpc-location" {
  value = "${var.vpc-location}"
}

output "example-node.hostnames" {
  value = ["${formatlist("%v%v",var.vpc-vm_prefix,vrealize_virtual_machine.example_vm.*.hostnameCompletionString)}"]
}

output "ubuntu.public_ips" {
  value = ["${vrealize_virtual_machine.example_vm.*.networkList.0.networkAddress}"]
}
