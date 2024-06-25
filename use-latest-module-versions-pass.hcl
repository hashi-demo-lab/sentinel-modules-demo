param "public_registry" {
  value = true
}

param "address" {
  value = "registry.terraform.io"
}

param "organization" {
  value = "Azure"
}

param "token" {
  value = ""
}

# https://github.com/hashicorp/terraform-guides/blob/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel
module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mocks/mock-tfconfig-pass.sentinel"
  }
}
