provider "oci" {}

terraform {
  backend "oci" {
    bucket    = "main-tf-state-bucket"
    namespace = "axhqrtfsvfjk"
    key       = "mc-server-tf-state"
  }

}