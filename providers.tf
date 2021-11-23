provider "oci" {
  fingerprint          = var.fingerprint
  private_key_path     = var.private_key_path
  region               = var.region
  tenancy_ocid         = var.tenancy_ocid
  user_ocid            = var.user_ocid
}

provider "oci" {
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = lookup(data.oci_identity_regions.home-region.regions[0], "name")
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  alias            = "home"
}
