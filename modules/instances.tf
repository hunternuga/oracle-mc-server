resource "oci_core_instance" "generated_oci_core_instance" {
  agent_config {
    is_management_disabled = "false"
    is_monitoring_disabled = "false"
    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Fleet Application Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = "iRfa:US-SANJOSE-1-AD-1"
  compartment_id      = "ocid1.tenancy.oc1..aaaaaaaaa72kuwarbexpudwxmrltalhj4wwl4bcta3wvo2pggfbudgynfgwa"
  create_vnic_details {
    assign_ipv6ip             = "false"
    assign_private_dns_record = "true"
    assign_public_ip          = "false"
    display_name              = "main-vnic"
    subnet_id                 = oci_core_subnet.generated_oci_core_subnet.id
  }
  display_name = "minecraft-server"
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  is_pv_encryption_in_transit_enabled = "true"
  metadata = {
    "ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6jMfJWw1pAKL5Pvg3GI//1sX6XzfRcA4Mj5KZfnmPuJj6cjmGDEmjCHIJewZb/+pfnU8f8FGkcnE6AlqtjI1zT2g0614H0nokLcPZ2HL82RFHgaCt3m9Ud5YXLujGxz2ZEDSghqQlQbO86Kh+LL1CD10GlMJCyuaagl6af1MV+TYJ18DS94TKRdtVSxpomGZHODwUo4+gu12uhgJ6W+qbvNekIIpihkYtuF4sMGCKWxMgNTUWk1TyWPBp9O6b3/QoLjmBb7aPKocWRKRWEPomr56aYPyt5hwpVSdqA2Zpf5bpPvLfLVxV2ZmL3AMOYkTYEDbVPCNwFYuAu9kZ8SGz ssh-key-2025-12-23"
  }
  shape = "VM.Standard.A1.Flex"
  shape_config {
    memory_in_gbs = "24"
    ocpus         = "4"
  }
  source_details {
    source_id   = "ocid1.image.oc1.us-sanjose-1.aaaaaaaagd2ujisye2n4qrqxehgkfgqefbthic7pph4sdabdwe5hpjn2yxia"
    source_type = "image"
  }
}