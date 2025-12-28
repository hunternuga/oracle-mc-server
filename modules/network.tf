resource "oci_core_vcn" "generated_oci_core_vcn" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaa72kuwarbexpudwxmrltalhj4wwl4bcta3wvo2pggfbudgynfgwa"
  display_name   = "main-vcn"
  dns_label      = "vcn12221926"
}

resource "oci_core_subnet" "generated_oci_core_subnet" {
  cidr_block     = "10.0.0.0/24"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaa72kuwarbexpudwxmrltalhj4wwl4bcta3wvo2pggfbudgynfgwa"
  display_name   = "main-public-1"
  dns_label      = "subnet12221926"
  route_table_id = oci_core_vcn.generated_oci_core_vcn.default_route_table_id
  vcn_id         = oci_core_vcn.generated_oci_core_vcn.id
}

resource "oci_core_internet_gateway" "generated_oci_core_internet_gateway" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaa72kuwarbexpudwxmrltalhj4wwl4bcta3wvo2pggfbudgynfgwa"
  display_name   = "Internet Gateway main-vcn"
  enabled        = "true"
  vcn_id         = oci_core_vcn.generated_oci_core_vcn.id
}

resource "oci_core_default_route_table" "generated_oci_core_default_route_table" {
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.generated_oci_core_internet_gateway.id
  }
  manage_default_resource_id = oci_core_vcn.generated_oci_core_vcn.default_route_table_id
}